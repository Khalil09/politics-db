#!/usr/local/bin/ruby
# First argument should be the table and second is the number of items
require 'faker'
require 'byebug'

Faker::Config.locale = :"pt-BR"

seed_name = 'seed.sql'

puts "Creating #{ARGV[1]} for table #{ARGV[0]}"

estados = ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]

sqlinsert = { 'municipio' => 
"INSERT INTO municipio (sigla, nome, area, id_estado)
 SELECT #{Faker::Name.initials(2)}, #{Faker::Address.city}, #{rand(100000)}, estado.id
 FROM estado
 WHERE nome = #{estados.sample}
 LIMIT 1"}

File.open(seed_name, 'a') do |file|
  Integer(ARGV[1]).times do
    file.puts sqlinsert[ARGV[0]]
    file.puts "\n"
  end
end



