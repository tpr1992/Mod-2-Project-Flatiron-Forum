
# User.destroy_all
# Section.destroy_all
# Reply.destroy_all
# Post.destroy_all

# User.create(username: "jeng95", password_digest: "notapassword")
# User.create(username: "ludwig2018", password_digest: "password")
# User.create(username: "TerencePR", password_digest: "DK")
#
# 5.times do
# User.create(username: Faker::Internet.username, password_digest: Faker::Creature::Cat.name.downcase + rand(1990..2019).to_s)
# end


Section.create(name: "Cats", description: "Cats are mini-tigers. 'Nuff said.'")
Section.create(name: "Technology", description: "The top discussion board for technology news on the internet. Voted #1 of all time.")
Section.create(name: "Learn Programming", description: "No matter your level of programming knowledge, the 'Always a Beginner' mindset is heavily encouraged here.")
Section.create(name: "Music", description: "The musical community of the world. This section is for the discussion of any and all form of music from Rock, to Jazz, to Electronic, to whatever else.")
Section.create(name: "Cryptocurrency", description: "The official source for CryptoCurrency News, Discussion & Analysis.")
Section.create(name: "Flatiron School", description: "Flatiron School is a place for all current, former, and prospective students to discuss anything related to flatiron and programming bootcamp culture.")
Section.create(name: "ELI5", description: "Explain Like I'm Five is the best forum and archive on the internet for layperson-friendly explanations; Don't Panic!

")

# 10.times do
# Post.create(name: Faker::Hacker.say_something_smart, content: Faker::Hacker.say_something_smart, user_id: rand(1..2), section_id: rand(1..7))
# end
#
# 20.times do
# Post.create(name: Faker::Hipster.sentence, content: Faker::Hipster.paragraph, user_id: rand(1..8), section_id: rand(1..7))
# end


#
# 10.times do
#   Reply.create(content: Faker::Hipster.paragraph, post_id: rand(1..20), user_id: rand(1..8))
# end
#
# 10.times do
#   Reply.create(content: Faker::Hipster.paragraph, post_id: rand(1..10), user_id: rand(1..8))
# end
#
# 10.times do
#   Reply.create(content: Faker::Hipster.paragraph, post_id: rand(10..20), user_id: rand(1..8))
# end
