# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

State.create([
               { state_name: 'Acre' },
               { state_name: 'Alagoas' },
               { state_name: 'Amapá' },
               { state_name: 'Amazonas' },
               { state_name: 'Bahia' },
               { state_name: 'Ceará' },
               { state_name: 'Distrito Federal' },
               { state_name: 'Espírito Santo' },
               { state_name: 'Goiás' },
               { state_name: 'Maranhão' },
               { state_name: 'Mato Grosso' },
               { state_name: 'Mato Grosso do Sul' },
               { state_name: 'Minas Gerais' },
               { state_name: 'Pará' },
               { state_name: 'Paraíba' },
               { state_name: 'Pernambuco' },
               { state_name: 'Piauí' },
               { state_name: 'Rio de Janeiro' },
               { state_name: 'Rio Grande do Norte' },
               { state_name: 'Rondônia' },
               { state_name: 'Roraima' },
               { state_name: 'São Paulo' },
               { state_name: 'Sergipe' },
               { state_name: 'Tocantins' }
             ])

pr = State.create({ state_name: 'Paraná' })

sc = State.create({ state_name: 'Santa Catarina' })

rgs = State.create({ state_name: 'Rio Grande do Sul' })

pr.cities.create([
                   { city_name: 'Santa Isabel' },
                   { city_name: 'Curitiba' },
                   { city_name: 'Umuarama' },
                   { city_name: 'Londrina' },
                   { city_name: 'Ponta Grossa' }
                 ])
sc.cities.create([
                   { city_name: 'Florianópolis' },
                   { city_name: 'Balneário Camboriú' },
                   { city_name: 'São Francisco do Sul' },
                   { city_name: 'Blumenau' },
                   { city_name: 'Joinville' }
                 ])
rgs.cities.create([
                    { city_name: 'Porto Alegre' },
                    { city_name: 'Caxias do Sul' },
                    { city_name: 'Pelotas' },
                    { city_name: 'Santa Maria' },
                    { city_name: 'Canoas' }
                  ])
puts 'Seeds populated'
