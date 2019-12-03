# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Picture.destroy_all
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
    #profile_picture: "https://images.unsplash.com/photo-1525450280520-7d542a86e065?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9"
  )
  user.remote_photo_url = "https://images.unsplash.com/photo-1525450280520-7d542a86e065?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  user.save!
end

user6 = User.new(
    email: "johnmathew@example.com",
    first_name: "Jane",
    last_name: "Mathew",
    password: '123456',
    password_confirmation: '123456',
    username: 'John',
    description: 'During the day I work as a Tax advisor but on my free time I am passionate about cooking. I like to mix the new with the old.',
    #profile_picture: "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9"
  )
user6.remote_photo_url = "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
user6.save!

user7 = User.new(
  email: "monica@example.com",
    first_name: "Monica",
    last_name: "Geller",
    password: '123456',
    password_confirmation: '123456',
    username: 'Monica',
    description: 'I moved here with my husband and we longed to share our gastronomic culture with our new friends.',
    #profile_picture: "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1"
  )
user7.remote_photo_url = "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
user7.save!

user8 = User.new(
  email: "ross@example.com",
    first_name: "Ross",
    last_name: "Geller",
    password: '123456',
    password_confirmation: '123456',
    username: 'Ross',
    description: 'I have been in Berlin for over 5 years. My background is in Tech but I become a cooking hobbist when I started to miss food from home.',
    #profile_picture: "https://images.unsplash.com/photo-1523419409543-a5e549c1faa8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9"
  )
user8.remote_photo_url = "https://images.unsplash.com/photo-1523419409543-a5e549c1faa8?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
user8.save!

user9 = User.new(
  email: "paulo@example.com",
    first_name: "Paulo",
    last_name: "Silva",
    password: '123456',
    password_confirmation: '123456',
    username: 'Paulo',
    description: "I'm a 39 year old Chef. I am passionate about food, travel, and music. I love to talk about different cuisines, culture and traditions.",
    #profile_picture: "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9"
  )
user9.remote_photo_url = "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
user9.save!

puts "🎉 Added users"

####################################################################################################

puts '🌱 Creating events...'

  event1 = Event.new(
    name: "Taste Of China!",
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: "You will be eating home comfort food, which you may not be able to eat it if you are not invited to a Taiwanese family.It will be vegetarian and vegan since we need to also share our love and care to the environment and animals. However, don't you worry, it will still be very delicious!",
    cuisine: 'Chinese',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event1.remote_photo_url = "https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=80&q=80"
  event1.save!

  event2 = Event.new(
    name: "Traditional Peruvian dinner",
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: "Eric and I welcome you to our home! You will enjoy your amuse bouche with a piano and electronics live performance from Eric in our home studio-living room. Afterwards, we will go to the dining room, where you will enjoy the rest of the Menu. The menu is inspired on some of the most emblematic dishes from Perú, my native country.",
    cuisine: 'Peruvian',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event2.remote_photo_url = "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event2.save!


  event3 = Event.new(
    name: "Welcome to Italy!",
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: "Ossobuco with risotto or pasta. Start with some appetizer and then you will be amazed if you eat our ossobuco with risotto or garlic oil pasta. ",
    cuisine: 'Italian',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event3.remote_photo_url = "https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event3.save!

  event4 = Event.new(
    name: "Japanese Dinner",
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: "Discover and taste the individual and characteristic peculiarities and flavors of the Orange Wine in combination with the Japanese menu.",
    cuisine: 'Japanese',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event4.remote_photo_url = "https://images.unsplash.com/photo-1563245370-cd55e7c95ff4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event4.save!


event5 = Event.new(
    name: "Enjoy the dumplings",
    event_date: DateTime.new([2018,2019,2020, 2021].sample, (1..12).to_a.sample, (1..28).to_a.sample, (12..23).to_a.sample, [0, 30].sample, 0),
    description: "Savor the Pierogi which is made by wrapping unleavened dough around a sweet filling.",
    cuisine: 'Polish',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: User.all.sample.id,
    status: 'open',
    address: districts.sample
  )
  event5.remote_photo_url = "https://images.unsplash.com/photo-1513862153653-f8b7324e1779?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event5.save!

  event6 = Event.new(
    name: "Enjoy traditional Portuguese food",
    event_date: DateTime.new(2019, 12, (1..28).to_a.sample, (18..20).to_a.sample, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'Portuguese',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: user9.id,
    status: 'open',
    address: districts.sample
  )
  event6.remote_photo_url = "https://images.unsplash.com/photo-1567056602606-6172dedda3ac?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event6.save!

  event7 = Event.new(
    name: "Let's eat a sausage together!",
    event_date: DateTime.new(2019, 12, (1..28).to_a.sample, (18..20).to_a.sample, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'German',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: user9.id,
    status: 'open',
    address: districts.sample
  )
  event7.remote_photo_url = "https://images.unsplash.com/photo-1547424450-75ec164925ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event7.save!

  event8 = Event.new(
    name: "Friends don't let friends go Taco-less!",
    event_date: DateTime.new(2019, 12, (1..28).to_a.sample, (18..20).to_a.sample, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'Mexican',
    max_guests: (1..10).to_a.sample,
    booked_guests: (4..8).to_a.sample,
    price_per_guest: (5..20).to_a.sample,
    user_id: user9.id,
    status: 'open',
    address: districts.sample
  )
  event8.remote_photo_url = "https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event8.save!

puts '🎉 Added Events'

#############################################################################

puts '🌱 Creating Pictures...'

p11 = Picture.new(event: event1)
p11.remote_photo_url = 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p11.save!
p12 = Picture.new(event: event1)
p12.remote_photo_url = 'https://images.unsplash.com/photo-1527997921830-de1cf1f9b430?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p12.save!
p13 = Picture.new(event: event1)
p13.remote_photo_url = 'https://images.unsplash.com/photo-1542990254-7174ee186dd1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p13.save!

# Picture.new(event: event1, photo: 'https://images.unsplash.com/photo-1527997921830-de1cf1f9b430?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event1, photo: 'https://images.unsplash.com/photo-1542990254-7174ee186dd1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p21 = Picture.new(event: event2)
p21.remote_photo_url = 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p21.save!
p22 = Picture.new(event: event2)
p22.remote_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Ceviche_with_cancha_at_Peruvian_Market%2C_Caracas.jpg/1584px-Ceviche_with_cancha_at_Peruvian_Market%2C_Caracas.jpg'
p22.save!
p23 = Picture.new(event: event2)
p23.remote_photo_url = 'https://cdn.pixabay.com/photo/2015/11/09/23/21/food-1036132_960_720.jpg'
p23.save!

# Picture.new(event: event2, photo: 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event2, photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Ceviche_with_cancha_at_Peruvian_Market%2C_Caracas.jpg/1584px-Ceviche_with_cancha_at_Peruvian_Market%2C_Caracas.jpg').save!
# Picture.new(event: event2, photo: 'https://cdn.pixabay.com/photo/2015/11/09/23/21/food-1036132_960_720.jpg').save!

p31 = Picture.new(event: event3)
p31.remote_photo_url = 'https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p31.save!
p32 = Picture.new(event: event3)
p32.remote_photo_url = 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p32.save!
p33 = Picture.new(event: event3)
p33.remote_photo_url = 'https://images.unsplash.com/photo-1551892374-ecf8754cf8b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p33.save!

# Picture.new(event: event3, photo: 'https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event3, photo: 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event3, photo: 'https://images.unsplash.com/photo-1551892374-ecf8754cf8b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p41 = Picture.new(event: event4)
p41.remote_photo_url = 'https://images.unsplash.com/photo-1563245370-cd55e7c95ff4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p41.save!
p42 = Picture.new(event: event4)
p42.remote_photo_url = 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p42.save!
p43 = Picture.new(event: event4)
p43.remote_photo_url = 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p43.save!

# Picture.new(event: event4, photo: 'https://images.unsplash.com/photo-1563245370-cd55e7c95ff4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event4, photo: 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event4, photo: 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p51 = Picture.new(event: event5)
p51.remote_photo_url = 'https://images.unsplash.com/photo-1513862153653-f8b7324e1779?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p51.save!
p52 = Picture.new(event: event5)
p52.remote_photo_url = 'https://images.unsplash.com/photo-1496114212242-bac8bd9de53d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p52.save!
p53 = Picture.new(event: event5)
p53.remote_photo_url = 'https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p53.save!

# Picture.new(event: event5, photo: 'https://images.unsplash.com/photo-1513862153653-f8b7324e1779?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event5, photo: 'https://images.unsplash.com/photo-1496114212242-bac8bd9de53d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event5, photo: 'https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p61 = Picture.new(event: event6)
p61.remote_photo_url = 'https://images.unsplash.com/photo-1567056602606-6172dedda3ac?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p61.save!
p62 = Picture.new(event: event6)
p62.remote_photo_url = 'https://www.maxpixel.net/static/photo/2x/Food-Cooking-Lisbon-Egg-Sausage-Flavor-Portugal-4161518.jpg'
p62.save!
p63 = Picture.new(event: event6)
p63.remote_photo_url = 'https://images.food52.com/wLI5es1lZKgegjqE2CaLHxrJ3cc=/1556x1037/ba9e4f40-4eff-4de8-818f-9e373251e9c6--2017-1116_portuguese-pesticitos_rocky-luten_038.jpg'
p63.save!

# Picture.new(event: event6, photo: 'https://images.unsplash.com/photo-1567056602606-6172dedda3ac?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event6, photo: 'https://www.maxpixel.net/static/photo/2x/Food-Cooking-Lisbon-Egg-Sausage-Flavor-Portugal-4161518.jpg').save!
# Picture.new(event: event6, photo: 'https://images.food52.com/wLI5es1lZKgegjqE2CaLHxrJ3cc=/1556x1037/ba9e4f40-4eff-4de8-818f-9e373251e9c6--2017-1116_portuguese-pesticitos_rocky-luten_038.jpg').save!

p71 = Picture.new(event: event7)
p71.remote_photo_url = 'https://images.unsplash.com/photo-1547424450-75ec164925ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p71.save!
p72 = Picture.new(event: event7)
p72.remote_photo_url = 'https://images.unsplash.com/photo-1531097023973-44a8761c85e1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p72.save!
p73 = Picture.new(event: event7)
p73.remote_photo_url = 'https://images.unsplash.com/photo-1552913903-2cffa1962dc7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p73.save!

# Picture.new(event: event7, photo: 'https://images.unsplash.com/photo-1547424450-75ec164925ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event7, photo: 'https://images.unsplash.com/photo-1531097023973-44a8761c85e1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event7, photo: 'https://images.unsplash.com/photo-1552913903-2cffa1962dc7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p81 = Picture.new(event: event8)
p81.remote_photo_url = 'https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p81.save!
p82 = Picture.new(event: event8)
p82.remote_photo_url = 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p82.save!
p83 = Picture.new(event: event8)
p83.remote_photo_url = 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p83.save!

# Picture.new(event: event8, photo: 'https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event8, photo: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event8, photo: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

puts '🎉 Added Pictures'

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

review11 = Review.new(
   booking_id: booking11.id,
   rating: (4..5).to_a.sample,
   content: "Paulo and his family were such a joy to spend time with. We got to know them personally and learn more about Portuguese history. There were so many amazing courses that we could barely walk out afterwards."
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

puts "🎉 Added reviews"


