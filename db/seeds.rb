require 'faker'

10.times do
    Recipe.create!(
        title: Faker::Food.ingredient,
        body: Faker::Food.measurement
    )
end

25.times do
    Comment.create!(
        body: Faker::Lorem.paragraph
    )
end

puts "Seed finished"
puts "#{Recipe.count} items created"
puts "#{Comment.count} lists created"