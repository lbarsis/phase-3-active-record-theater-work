
puts "Seeding..."

20.times do 
  Roll.create(
    character_name: Faker::Name.name
  )
end

10.times do 
  Audition.create(
    actor: Faker::Name.name,
    location: Faker::Address.city,
    phone: Faker::PhoneNumber.phone_number,
    hired: false,
    roll_id: rand(Roll.all.first.id..Roll.all.last.id)
  )
end

puts "Done Seeding"
