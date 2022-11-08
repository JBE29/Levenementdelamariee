User.destroy_all

20.times do
    User.create!(
        first_name: Faker::Emotion.adjective,
        last_name: Faker::Company.name, 
        description: Faker::ChuckNorris.fact,
        email: Faker::Internet.email,
        password: "patate",
    )
end