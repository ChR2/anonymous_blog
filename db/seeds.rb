require 'faker'

4.times do
  Post.create!(title: Faker::Lorem.words(3).join(' '), body: Faker::Lorem.paragraph)
end

4.times do
  Tag.create!(name: Faker::Lorem.words(1))
end