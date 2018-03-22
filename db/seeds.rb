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


user1 = User.create(email:"user1@gmail.com", password: "123456", password_confirmation: "123456")
profile1 = Profile.create(user: user1, username: "Jason", city: "Los Angeles", age: 22, preference: "Female", gender:"Male", chakra_colour: "orange", remote_photo_url: "https://i.imgur.com/0Ro4Lyp.jpg" , nerdy: 10, sporty: 2, party: 50, organized: 70, spiritual: 100)


user2 = User.create(email:"user2@gmail.com", password: "123456", password_confirmation: "123456")
profile2 = Profile.create(user: user2, username: "Sally", city: "Los Angeles", age: 35, preference: "Male", gender:"Female", chakra_colour: "blue", remote_photo_url: "https://i.imgur.com/szePHzO.jpg", nerdy: 10, sporty: 25, party: 40, organized: 75, spiritual: 90)

user1 = User.create!(email:"user1@gmail.com", password: "123456", password_confirmation: "123456")

user2 = User.create!(email:"user2@gmail.com", password: "123456", password_confirmation: "123456")

user3 = User.create!(email:"user3@gmail.com", password: "123456", password_confirmation: "123456")


user5 = User.create!(email:"user5@gmail.com", password: "123456", password_confirmation: "123456")

user6 = User.create!(email:"user6@gmail.com", password: "123456", password_confirmation: "123456")


profile1 = Profile.create!(user: user1, username: "Jason", city: "Barcelona", age: 22, preference: "Female", gender:"Male", chakra_colour: "orange", remote_photo_url: "https://i.imgur.com/0Ro4Lyp.jpg" , nerdy: 10, sporty: 2, party: 50, organized: 70, spiritual: 100)
profile2 = Profile.create!(user: user2, username: "Sally", city: "Barcelona", age: 35, preference: "Male", gender:"Female", chakra_colour: "blue", remote_photo_url: "https://i.imgur.com/szePHzO.jpg", nerdy: 10, sporty: 25, party: 40, organized: 75, spiritual: 90)
profile3 = Profile.create!(user: user3, username: "Bob", city: "Barcelona", age: 26, preference: "Female", gender:"Male", chakra_colour: "orange", remote_photo_url: "http://i.imgur.com/9FWjzJ4.png" , nerdy: 10, sporty: 2, party: 50, organized: 70, spiritual: 100)
profile4 = Profile.create!(user: user4, username: "Brenda", city: "Barcelona", age: 31, preference: "Male", gender:"Female", chakra_colour: "blue", remote_photo_url: "https://i.pinimg.com/736x/f4/95/79/f49579eb114396353f007b08a76d86eb--ulzzang-couple-avatar.jpg", nerdy: 10, sporty: 25, party: 40, organized: 75, spiritual: 90)
profile5 = Profile.create!(user: user5, username: "Larry", city: "Barcelona", age: 40, preference: "Female", gender:"Male", chakra_colour: "orange", remote_photo_url: "http://i.imgur.com/gKwuolt.jpg" , nerdy: 10, sporty: 2, party: 50, organized: 70, spiritual: 100)
profile6 = Profile.create!(user: user6, username: "Linda", city: "Barcelona", age: 23, preference: "Male", gender:"Female", chakra_colour: "blue", remote_photo_url: "http://i.imgur.com/rFYYhl5.jpg", nerdy: 10, sporty: 25, party: 40, organized: 75, spiritual: 90)

# mutch1 = Match.create(active: true)


# mutch1.users << [user1, user2], [user1, user2]
# mutch1.save!

# mutch2.users << [user3, user4]
# mutch2.save!



# message1 = Message.create!(user: user1, match: mutch, message: "Hey cowboy")
# message2 = Message.create!(user: user2, match: mutch, message: "I think I've seen you before...")


question1 = Question.create!(question: "Dessert Island..?")
question2 = Question.create!(question: "Stumble upon a polar bear..?")
question3 = Question.create!(question: "Find a million Dollars..?")
question4 = Question.create!(question: "Who?")
question5 = Question.create!(question: "Some")

answer1 = Answer.create!(question: question1, answer: "Gun", colour: "BLUE")
answer2 = Answer.create!(question: question1, answer: "Fishing Rod", colour: "RED")

answer3 = Answer.create!(question: question2, answer: "Climb a tree", colour: "BLUE")
answer4 = Answer.create!(question: question2, answer: "Act like a cub", colour: "RED")

answer5 = Answer.create!(question: question3, answer: "Happy Cry", colour: "GREEN")
answer6 = Answer.create!(question: question3, answer: "Scared Cry", colour: "YELLOW")

answer7 = Answer.create!(question: question4, answer: "Wonder Woman", colour: "GREEN")
answer8 = Answer.create!(question: question4, answer: "Hilary Clinton", colour: "YELLOW")

answer9 = Answer.create!(question: question5, answer: "Nuk", colour: "BLUE")
answer10 = Answer.create!(question: question5, answer: "Nak", colour: "RED")

user1.answers << [answer1, answer3]
user2.answers << [answer2, answer4, answer10]
puts "Succesful seed my lord"
