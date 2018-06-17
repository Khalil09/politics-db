#!/usr/local/bin/ruby
# First argument should be the table and second is the number of items
require 'faker'
require 'byebug'

Faker::Config.locale = :"pt-BR"

seed_name = 'seed.sql'
$house_nums = Array(1..1000)

puts "Creating #{ARGV[1]} for table #{ARGV[0]}"


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
  name ||= Faker::Address.city
  mun_insert(name) +
  "INSERT INTO endereco (bairro, id, rua, cep, complemento, id_municipio)
   SELECT '#{Faker::Address.community}', #{$house_nums.delete($house_nums.sample)}, '#{Faker::Address.street_name}', #{Integer(Faker::Address.zip.tr('-', ''))}, '#{Faker::Address.secondary_address}', municipio.id
   FROM municipio
   WHERE nome = '#{name}'
   LIMIT 1;\n\n"
end

sqlinsert = { 
  'municipio' => :mun_insert, 
  'endereco' => :addr_insert
}

File.open(seed_name, 'a') do |file|
  Integer(ARGV[1]).times do
    file.puts send(sqlinsert[ARGV[0]])
    sleep(0.01)
  end
end



