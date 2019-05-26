5.times do
    Slogan.create({
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        email: Faker::Name.first_name + "@gmail.com",
        slogan: Faker::Lorem.sentence(5)
    })
end