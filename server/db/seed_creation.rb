#!/usr/local/bin/ruby
# First argument should be the table and second is the number of items
require 'faker'
require 'byebug'

Faker::Config.locale = :"pt-BR"

seed_name = 'seed.sql'

puts "Creating #{ARGV[1]} for table #{ARGV[0]}"

def rand_alphanum(length)
  (0..length).map{ rand(36).to_s(36) }.join
end

$house_nums = Array(1..1000)
$partido = [15, 13, 45, 11, 12, 14, 25, 22, 40, 23]


def mun_insert(name = nil) 
  estados = ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]
  name ||=  Faker::Address.city
   "INSERT INTO municipio (sigla, nome, area, id_estado)
   SELECT '#{Faker::Name.initials(2)}', '#{name}', '#{rand(100000)}km2', estado.id
   FROM estado
   WHERE nome = '#{estados.sample}'
   LIMIT 1;\n\n"
end

def addr_insert
  name = Faker::Address.city
  mun_insert(name) +
  "INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT '#{Faker::Address.community}', #{$house_nums.delete($house_nums.sample)}, '#{Faker::Address.street_name}', #{Integer(Faker::Address.zip.tr('-', ''))}, '#{Faker::Address.secondary_address}', municipio.id
   FROM municipio
   WHERE nome = '#{name}'
   LIMIT 1;\n\n"
end

def zona_rand_insert
  "INSERT INTO zona (nome, id_municipio)
   SELECT '#{Faker::Address.street_name}', municipio.id
   FROM municipio
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def local_rand_insert
  "INSERT INTO local (nome, id_zona)
   SELECT '#{Faker::Address.street_address}', zona.id
   FROM zona
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def secao_rand_insert
  "INSERT INTO secao (nome, id_local)
   SELECT '#{rand_alphanum(5)}', local.id
   FROM local
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def urna_rand_insert
  "INSERT INTO urna (id_secao)
   SELECT secao.id
   FROM secao
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def eleitor_insert(name = nil)
  generos = ['homem', 'mulher']
  name ||= Faker::Name.name
  "INSERT INTO eleitor (titulo_eleitor, nome, data_de_nasc, genero, id_secao, cep_endereco, id_endereco)
   SELECT '#{rand(99999999)}', '#{name}', '#{Faker::Date.birthday(18, 120).to_s}', '#{generos.sample}', secao.id, endereco.cep, endereco.id
   FROM secao, endereco, zona, local
   WHERE secao.id_local = local.id AND local.id_zona = zona.id  AND zona.id_municipio = endereco.id_municipio
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def candidato_insert
  name = Faker::Name.name
  eleitor_insert(name) + 
  "INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, partido.id, #{rand(4) + 3}
   FROM eleitor, partido
   WHERE eleitor.nome = '#{name}'
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def pres_insert
  partido =  $partidos.delete($partidos.sample)
  pres = Faker::Name.name
  vice = Faker::Name.name
  eleitor_insert(pres) + 
  eleitor_insert(vice) + 
  "INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, #{partido}, 1
   FROM eleitor
   WHERE eleitor.nome = '#{pres}'
   ORDER BY rand()
   LIMIT 1;\n\n" +
  "INSERT INTO candidato (id_pessoa, id_partido, id_cargo)
   SELECT eleitor.id, #{partido}, 2
   FROM eleitor
   WHERE eleitor.nome = '#{vice}'
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def voto_insert
  "INSERT INTO voto (data, id_eleitor, id_candidato, id_urna)
   SELECT '#{Faker::Time.backward(14, :evening).to_s.chomp(' -0300')}', eleitor.id, candidato.id, urna.id
   FROM eleitor, candidato, urna
   WHERE eleitor.id_secao = urna.id_secao
   ORDER BY rand()
   LIMIT 1;\n\n"
end

def chapa_insert
  "INSERT INTO chapa (nome)
   VALUES ('#{Faker::GameOfThrones.house}');\n\n"
end

sqlinsert = {
  'municipio' => :mun_insert, 
  'endereco' => :addr_insert,
  'zona' => :zona_rand_insert,
  'local' => :local_rand_insert,
  'secao' => :secao_rand_insert,
  'urna' => :urna_rand_insert,
  'eleitor' => :eleitor_insert,
  'candidato' => :candidato_insert,
  'presidente' => :pres_insert,
  'voto' => :voto_insert,
  'chapa' => :chapa_insert
}

File.open(seed_name, 'a') do |file|
  Integer(ARGV[1]).times do
    file.puts send(sqlinsert[ARGV[0]])
    sleep(0.01)
  end
end



