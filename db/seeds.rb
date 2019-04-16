# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Section.destroy_all
Reply.destroy_all
Post.destroy_all

User.create(username: "jeng95", password_digest: "notapassword")
User.create(username: "ludwig2018", password_digest: "password")
User.create(username: "TerencePR", password_digest: "DK")

5.times do
User.create(username: Faker::Internet.username, password_digest: Faker::Creature::Cat.name.downcase + rand(1990..2019).to_s)
end


Section.create(name: "Cats")
Section.create(name: "Technology")
Section.create(name: "Learn Programming")
Section.create(name: "Music")
Section.create(name: "Cryptocurrency")
Section.create(name: "Flatiron School")
Section.create(name: "ELI5")

10.times do
Post.create(name: Faker::Hacker.say_something_smart, content: Faker::Hacker.say_something_smart, user_id: 1, section_id: 2)
end

# 10.times do
# Post.create(name: Faker::Hacker.say_something_smart, content: Faker::Hacker.say_something_smart, user_id: 2, section_id: 2)
# end
#
# 10.times do
#   Post.create(name: Faker::Hacker.say_something_smart, content: Faker::Hipster.paragraph, user_id: rand(1..8), section_id: rand(1..7))
# end




10.times do
  Reply.create(content: Faker::Hacker.say_something_smart, post_id: rand(1..20))
end

10.times do
  Reply.create(content: Faker::Hipster.paragraph, post_id: rand(1..20))
end



#
# Reply.create(content: Faker::Hacker.say_something_smart, user_id: 1, post_id: 1)
# Reply.create(content: Faker::Hacker.say_something_smart, user_id: 1, post_id: 1)
# Reply.create(content: Faker::Creature::Cat.registry, user_id: 2, post_id: 1)
# Reply.create(content: Faker::Creature::Cat.registry, user_id: 2, post_id: 2)
# Reply.create(content: Faker::Creature::Cat.registry, user_id: 2, post_id: 2)
