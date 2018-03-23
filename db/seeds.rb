# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding all data ... please wait ;) "
Profile.delete_all
User.delete_all
Match.delete_all
Message.delete_all
Question.delete_all
Answer.delete_all
UserAnswer.delete_all
UserMatch.delete_all


user2 = User.create(email:"user2@gmail.com", password: "123456", password_confirmation: "123456")
profile2 = Profile.create(user: user2, username: "Lola", city: "Barcelona", age: 25, preference: "Male", gender:"Female", chakra_colour: "blue", remote_photo_url: "https://i.imgur.com/szePHzO.jpg", nerdy: 1, sporty: 2, party: 4, organized: 7, spiritual: 9)


# mutch1 = Match.create(active: true)


# mutch1.users << [user1, user2], [user1, user2]
# mutch1.save!

# mutch2.users << [user3, user4]
# mutch2.save!



# message1 = Message.create!(user: user1, match: mutch, message: "Hey cowboy")
# message2 = Message.create!(user: user2, match: mutch, message: "I think I've seen you before...")


question1 = Question.create!(question: "Desert Island..?")
question2 = Question.create!(question: "Stumble upon a polar bear..?")
question3 = Question.create!(question: "Find a million Dollars..?")
question4 = Question.create!(question: "Perfect date?")
question5 = Question.create!(question: "Pineapple pizza..")

answer1 = Answer.create!(question: question1, answer: "Gun", colour: "BLUE")
answer2 = Answer.create!(question: question1, answer: "Fishing Rod", colour: "RED")

answer3 = Answer.create!(question: question2, answer: "Climb a tree", colour: "BLUE")
answer4 = Answer.create!(question: question2, answer: "Act like a cub", colour: "RED")

answer5 = Answer.create!(question: question3, answer: "Happy Cry", colour: "GREEN")
answer6 = Answer.create!(question: question3, answer: "Scared Cry", colour: "YELLOW")

answer7 = Answer.create!(question: question4, answer: "Netflix & Chill", colour: "GREEN")
answer8 = Answer.create!(question: question4, answer: "Drink & Dance", colour: "YELLOW")

answer9 = Answer.create!(question: question5, answer: "YEAHHHHH!", colour: "BLUE")
answer10 = Answer.create!(question: question5, answer: "ABOMINATION!", colour: "RED")

user1.answers << [answer1, answer3]
user2.answers << [answer2, answer4, answer10]
puts "Succesful seed my lord"
