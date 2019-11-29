# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Booking.destroy_all
Event.destroy_all
User.destroy_all

cuisine_types = ['indian', 'polish', 'portuguese', 'italian', 'georgian', 'peruvian', 'thai', 'korean', 'spanish', 'moroccan', 'turkish', 'syrian']
districts = ['Neukölln', 'Mitte', 'Kreuzberg', 'Wedding', 'Charlottenburg', 'Moabit']

##############################################################################################

puts '🌱 Creating users...'

5.times do
  user = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: '123456',
    password_confirmation: '123456',
    username: Faker::Internet.username,
    description: Faker::Restaurant.description,
    profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm"
  )
  user.save!
end

user6 = User.new(
    email: "johnmathew@example.com",
    first_name: "John",
    last_name: "Mathew",
    password: '123456',
    password_confirmation: '123456',
    username: Faker::Internet.username,
    description: Faker::Restaurant.description,
    profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm"
  )
user6.save!

user7 = User.new(
  email: "monica@example.com",
    first_name: "Monica",
    last_name: "Geller",
    password: '123456',
    password_confirmation: '123456',
    username: Faker::Internet.username,
    description: Faker::Restaurant.description,
    profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm"
  )
user7.save!

user8 = User.new(
  email: "ross@example.com",
    first_name: "Ross",
    last_name: "Geller",
    password: '123456',
    password_confirmation: '123456',
    username: Faker::Internet.username,
    description: Faker::Restaurant.description,
    profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm"
  )
user8.save!

user9 = User.new(
  email: "paulo@example.com",
    first_name: "Paulo",
    last_name: "Silva",
    password: '123456',
    password_confirmation: '123456',
    username: Faker::Internet.username,
    description: "I'm a 39 year old Chef. I am passionate about food, travel, and music. I love to talk about different cuisines, culture and traditions.",
    profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm"
  )
user9.save!

puts "🎉 Added users"

####################################################################################################

puts '🌱 Creating events...'


  event1 = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: Faker::Restaurant.description,
    cuisine: 'Indian',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event1.remote_photo_url = "https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  event1.save!

  event2 = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: Faker::Restaurant.description,
    cuisine: 'Indian',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event2.remote_photo_url = "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"
  event2.save!


  event3 = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: Faker::Restaurant.description,
    cuisine: 'Italian',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event3.remote_photo_url = "https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"
  event3.save!

  event4 = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: Faker::Restaurant.description,
    cuisine: 'Mexican',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event4.remote_photo_url = "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"
  event4.save!


event5 = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: Faker::Restaurant.description,
    cuisine: 'Mexican',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event5.remote_photo_url = "https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  event5.save!

  event6 = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new(2019, 12, (1..28).to_a.sample, (18..20).to_a.sample, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'Portugese',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: user9.id,
    status: 'open',
    address: districts.sample
  )
  event6.remote_photo_url = "https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  event6.save!
puts '🎉 Added new Events'

#############################################################################

puts '🌱 Creating bookings...'

10.times do
  booking = Booking.new(
    user_id: User.all.sample.id,
    event_id: Event.all.sample.id,
    number_of_guests: (1..3).to_a.sample,
  )
  booking.save!
end

booking11 = Booking.new(
  user_id: user6.id,
  event_id: event6.id,
  number_of_guests: (1..3).to_a.sample,
  )
booking11.save!

booking12 = Booking.new(
  user_id: user7.id,
  event_id: event6.id,
  number_of_guests: (1..3).to_a.sample,
  )
booking12.save!

booking13 = Booking.new(
  user_id: user8.id,
  event_id: event6.id,
  number_of_guests: (1..3).to_a.sample,
  )
booking13.save!

puts "🎉 Added new bookings"

##############################################################################

puts '🌱 Creating reviews...'

10.times do
  review = Review.new(
    booking_id: Booking.all.sample.id,
    rating: (3..5).to_a.sample,
    content: Faker::Restaurant.review,
  )
  review.save!
end

review11 = Review.new(
   booking_id: booking11.id,
   rating: (4..5).to_a.sample,
   content: "Paulo and his family were such a joy to spend time with. We got to know them personally and learn more about Portugese history. There were so many amazing courses that we could barely walk out afterwards."
   )
review11.save!

review12 = Review.new(
   booking_id: booking12.id,
   rating: (4..5).to_a.sample,
   content: "Absolutely delicious and heartwarming experience. Paulo made classic comfort food which you can't get in restaurants. Would definitely recommend!"
   )
review12.save!

review13 = Review.new(
   booking_id: booking13.id,
   rating: (4..5).to_a.sample,
   content: "Great food and wonderful host! Paulo was warm ad welcoming from the very start and we had a wonderful evening with her. The food was fantastic and I really appreciated her making the extra effort to create vegetarian dishes for me, and telling me how to adapt traditional dishes to make them meat-free."
   )
review13.save!

 puts "🎉 Added new reviews"


