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
    description: Faker::Restaurant.description
  )
  user.save!
end

puts "🎉 Added users"

####################################################################################################

puts '🌱 Creating events...'

20.times do
  event = Event.new(
    name: Faker::Restaurant.name,
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: Faker::Restaurant.description,
    cuisine: cuisine_types.sample,
    max_guests: (6..20).to_a.sample,
    booked_guests: (0..6).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: ['open', 'booked', 'closed'].sample,
    # address: "Rudi-Dutschke-Straße 26, 10969 Berlin"
    address: districts.sample
  )
  # event.remote_photo_url = "https://images.unsplash.com/photo-1555126634-323283e090fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9"
  event.save!
end

puts '🎉 Added Events'

#############################################################################

puts '🌱 Creating bookings...'

40.times do
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

30.times do
  review = Review.new(
    booking_id: Booking.all.sample.id,
    rating: (1..5).to_a.sample,
    content: Faker::Restaurant.review,
  )
  review.save!
end

puts "🎉 Added reviews"

