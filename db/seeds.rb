# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Like.destroy_all
Comment.destroy_all
Category.destroy_all
Post.destroy_all
User.destroy_all



10.times do (
    User.create(name: Faker::Artist.name, username: Faker::Games::Fallout.character, password: 'hello')
)
end

6.times do (
    Category.create(name: ["Food", "Clothes", "Weapons", "Medical", "Housing", "Insights"].sample)
)
end

20.times do (
    Post.create(title: Faker::Hipster.word, location: Faker::Games::Fallout.location, content: Faker::TvShows::TwinPeaks.quote, date: Faker::Date.between(45.days.ago, Date.today), user: User.all.sample, category: Category.all.sample)
)
end
