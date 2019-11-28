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
  event3.remote_photo_url = "https://unsplash.com/photos/-F_5g8EEHYE"
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
puts '🎉 Added Events'

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

puts "🎉 Added bookings"

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

# puts "🎉 Added reviews"


