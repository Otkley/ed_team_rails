require 'faker'

Hotel.create!(
  total_rooms: rand(50), # numero random, maximo el 50
  address: Faker::Address.full_address, # datos fake de la gema Faker
  name: Faker::Restaurant.name
)

puts "Hotel creado"

=begin
25.times do
  Room.create!(
    length: rand(10), # El rand toma automatico el tipo de dato y sobre eso hace lo random
    width: rand(10),
    taken: rand(2), # Como es un valor booleano, ponemos random 2 opciones o 0 o 1
    image: "http://placehold.it/700x400",
    description: Faker::Lorem.sentence(word_count: 100), # texto random de 100 palabras
    hotel_id: Hotel.first.id
  )
end

puts "Habitaciones creadas"
=end

# Se ejecuta: rails db:setup despues de crear y migrar