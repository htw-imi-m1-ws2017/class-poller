# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Poll.delete_all
p1 = Poll.create(question: 'Which frameworks do you want to learn')
p2 = Poll.create(question: 'What is your big question about web technology?')
Answer.delete_all
p1.answers.create(text: 'Rails')
p1.answers.create(text: 'Node.js')
p1.answers.create(text: 'vue.js')
p2.answers.create(text: 'Wann kann man Rails nicht benutzen?')
