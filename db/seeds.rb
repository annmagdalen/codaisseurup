# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Profile.destroy_all
Registration.destroy_all
Category.destroy_all
Event.destroy_all
User.destroy_all

lecture=Category.create!(name: "Lecture")
workshop=Category.create!(name: "Workshop")
happy_hour=Category.create!(name: "Happy hour")
dinner=Category.create!(name: "Dinner")
quiz=Category.create!(name: "Quiz")

ann= User.create!(email: "annmagdalen@hotmail.com", password: "HelloWorld")
miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create!(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create!(email: "matt@codaisseurbnb.com", password: "abcd1234")

photo1=Photo.create!(remote_image_url: "http://res.cloudinary.com/dfkclhjps/image/upload/v1496054179/Quiz_xgqkqh.jpg")
photo2=Photo.create!(remote_image_url: "http://res.cloudinary.com/dfkclhjps/image/upload/v1496054209/Quiz_c2qfot.jpg")
photo3=Photo.create!(remote_image_url: "http://res.cloudinary.com/dfkclhjps/image/upload/v1496054336/quantum-physics-lecture_fg0ua6.png")
photo4=Photo.create!(remote_image_url: "http://res.cloudinary.com/dfkclhjps/image/upload/v1496054419/52743476f11ac145887d39d269775e05_qhqp8j.jpg")

event1= Event.create!(name: "Quiz", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin, est eget semper ornare, arcu metus porttitor erat, id interdum felis ante ac arcu. Ut malesuada pharetra pellentesque. Nam feugiat nec dolor ac elementum. Nam et vehicula erat, semper elementum orci. Phasellus imperdiet et nunc vel euismod. Phasellus non dignissim enim. Donec eros metus, molestie eu semper at, sodales ac erat. Quisque nec purus in quam viverra mollis.", location: "Amsterdam", price: 10, capacity: 100, includes_food: true, includes_drinks: true, start_at: "2nd Jun 2017 18:00:00+0000", ends_at: "3nd Jun 2017 10:00:00+0000", active: true, user: ann, categories: [dinner, happy_hour, quiz], photos: [photo1, photo2])

event2= Event.create!(name: "Lecture", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin, est eget semper ornare, arcu metus porttitor erat, id interdum felis ante ac arcu. Ut malesuada pharetra pellentesque. Nam feugiat nec dolor ac elementum. Nam et vehicula erat, semper elementum orci. Phasellus imperdiet et nunc vel euismod. Phasellus non dignissim enim. Donec eros metus, molestie eu semper at, sodales ac erat. Quisque nec purus in quam viverra mollis.", location: "Amsterdam", price: 10, capacity: 100, includes_food: false, includes_drinks: false, start_at: "2nd Jun 2017 18:00:00+0000", ends_at: "3nd Jun 2017 10:00:00+0000", active: true, user: miriam, categories: [lecture], photos: [photo3])

event3= Event.create!(name: "Workshop", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin, est eget semper ornare, arcu metus porttitor erat, id interdum felis ante ac arcu. Ut malesuada pharetra pellentesque. Nam feugiat nec dolor ac elementum. Nam et vehicula erat, semper elementum orci. Phasellus imperdiet et nunc vel euismod. Phasellus non dignissim enim. Donec eros metus, molestie eu semper at, sodales ac erat. Quisque nec purus in quam viverra mollis.", location: "Amsterdam", price: 10, capacity: 100, includes_food: false, includes_drinks: true, start_at: "2nd Jun 2017 18:00:00+0000", ends_at: "3nd Jun 2017 10:00:00+0000", active: true, user: wouter, categories: [workshop, happy_hour], photos: [photo4])

Registration.create!(event: event2, user:ann, status: true, price: 10, guest_count: 2)
Registration.create!(event: event3, user:ann, status: true, price: 20, guest_count: 3)
