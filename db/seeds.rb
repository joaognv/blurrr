# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Match.delete_all
Message.delete_all
Question.delete_all
Answer.delete_all
UserAnswer.delete_all
UserMatch.delete_all

user1 = User.create(email:"user1@gmail.com", password: "123456", password_confirmation: "123456")

user2 = User.create(email:"user2@gmail.com", password: "123456", password_confirmation: "123456")

mutch = Match.create(active: true)

mutch.users << [user1, user2]

message1 = Message.create(user: user1, match: mutch, message: "love ya")
message2 = Message.create(user: user2, match: mutch, message: "cool...")



question1 = Question.create(question: "What's up?")
question2 = Question.create(question: "Blue or red?")
question3 = Question.create(question: "beer or voddy?")
question4 = Question.create(question: "Ramen or Tacos?")
question5 = Question.create(question: "Hot like or Nelly?")

answer1 = Answer.create(question: question1, answer: "Not much", colour: "BLUE")
answer2 = Answer.create(question: question1, answer: "LOADSSS", colour: "RED")

answer3 = Answer.create(question: question2, answer: "Blue", colour: "BLUE")
answer4 = Answer.create(question: question2, answer: "Red", colour: "RED")

answer5 = Answer.create(question: question3, answer: "Beer", colour: "GREEN")
answer6 = Answer.create(question: question3, answer: "Voddy", colour: "YELLOW")

answer7 = Answer.create(question: question4, answer: "Ramen", colour: "GREEN")
answer8 = Answer.create(question: question4, answer: "Tacos", colour: "YELLOW")

answer9 = Answer.create(question: question5, answer: "Hot like", colour: "BLUE")
answer10 = Answer.create(question: question5, answer: "Nelly", colour: "RED")

user1.answers << [answer1, answer3]
user2.answers << [answer2, answer4, answer10]
