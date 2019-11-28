Review.destroy_all
Booking.destroy_all
Event.destroy_all
User.destroy_all

cuisine_types = ['indian', 'polish', 'portuguese', 'italian', 'georgian', 'peruvian', 'thai', 'korean', 'spanish', 'moroccan', 'turkish', 'syrian']
districts = ['Neukölln', 'Mitte', 'Kreuzberg', 'Wedding', 'Charlottenburg', 'Moabit']

##############################################################################################

puts '🌱 Creating users...'
user1 = User.new(
   email: "priyagaur@example.com",
   first_name: "Priya";
   last_name: "Gaur";
   password: '123456',
   password_confirmation: '123456',
   username: "priya14",
   description: "Noopur is a baker and chef,
   profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm")
user1.save!

user2 = User.new(
   email: "mary@example.com",
   first_name: "Mary";
   last_name: "Abella";
   password: '123456',
   password_confirmation: '123456',
   username: "thomas14",
   description: "Whenever I sat in my grandma's kitchen growing up, she’d make pasta while sharing memories of her own mom and grandma. I soon realized my generation was missing something important: The handmade pasta techniques and traditions passed down through the ages. I asked if I could post photos online, to which she replied, “Do what you want, I don’t understand you at all.” Today, she knows what an impact she’s making because people from all over the world come to our home to cook with her, making her very happy.",
   profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm")
user2.save!

user3 = User.new(
   email: "mary@example.com",
   first_name: "Pedro";
   last_name: "Abella";
   password: '123456',
   password_confirmation: '123456',
   username: "mary14",
   description: "Born and raised in Lisbon, I'm a huge food lover. I love spending quality time with food lovers and cook and eat authentic Portugese food together"
   profile_picture: "https://kitt.lewagon.com/placeholder/users/arthur-littm")
user3.save!

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


