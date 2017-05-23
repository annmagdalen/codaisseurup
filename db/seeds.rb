# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all

lecture=Category.create!(name: "Lecture")
workshop=Category.create!(name: "Workshop")
happy_hour=Category.create!(name: "Happy hour")
dinner=Category.create!(name: "Dinner")
quiz=Category.create!(name: "Quiz")

ann= User.create!(email: "annmagdalen@hotmail.com", password: "HelloWorld")

event1= Event.create!(name: "Eat, drink and quiz", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin, est eget semper ornare, arcu metus porttitor erat, id interdum felis ante ac arcu. Ut malesuada pharetra pellentesque. Nam feugiat nec dolor ac elementum. Nam et vehicula erat, semper elementum orci. Phasellus imperdiet et nunc vel euismod. Phasellus non dignissim enim. Donec eros metus, molestie eu semper at, sodales ac erat. Quisque nec purus in quam viverra mollis.", location: "Amsterdam", price: 10, capacity: 100, includes_food: true, includes_drinks: false, start_at: "2nd Jun 2017 18:00:00+0000", ends_at: "3nd Jun 2017 10:00:00+0000", active: true, user: ann, categories: [dinner, happy_hour, quiz])
