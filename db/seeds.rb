require 'faker'

puts "Generating coffe hamlet restaurants"

20.times do
  Restaurant.create(
    name: Faker::Coffee.blend_name,
    city: Faker::Movies::LordOfTheRings.location,
    description: Faker::Quotes::Shakespeare.hamlet_quote
  )
end


puts "You have #{Restaurant.count} restaurants!"


