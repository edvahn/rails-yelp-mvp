require 'faker'

puts 'Cleaning Seeds'
Restaurant.destroy_all
puts 'Creating 15 fake restaurants...'
15.times do
  restaurant = Restaurant.new(
    "name" =>   Faker::StarTrek.character,
    "address" => "#{Faker::Address.street_address} #{Faker::Address.city}",
    "category" => ["chinese", "italian", "japanese", "french", "belgian"].sample,
    "phone_number" => "+33 1 #{Faker::Number.number(8)}"
  )
  restaurant.save!
end
