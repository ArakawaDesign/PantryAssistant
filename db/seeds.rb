require 'faker'

5.times do
    User.create!(
        email: Faker::Internet.unique.email,
        password: Faker::Internet.unique.password
    )
end

10.times do
    Recipe.create!(
        title: Faker::Food.ingredient,
        body: Faker::Lorem.paragraph,
        quantity: Faker::Number.between(1, 10),
        servings: Faker::Number.between(1, 10),
        ingredients: Faker::Lorem.paragraph
    )
end

25.times do
    Comment.create!(
        body: Faker::Lorem.paragraph
    )
end

user = User.first
user.update_attributes!(
    email: 'arakawa.ryan@gmail.com',
    password: 'helloworld'
)

user2 = User.last
user2.update_attributes!(
    email: 'test@pantryassistant.com',
    password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Recipe.count} recipes created"
puts "#{Comment.count} comments created"