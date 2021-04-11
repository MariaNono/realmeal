# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all
Picture.destroy_all
Review.destroy_all
Booking.destroy_all
Event.destroy_all
User.destroy_all

cuisine_types = ['indian', 'polish', 'portuguese', 'italian', 'georgian', 'peruvian', 'thai', 'korean', 'spanish', 'moroccan', 'turkish', 'syrian']
districts = ['Neukölln', 'Mitte', 'Kreuzberg', 'Wedding', 'Charlottenburg', 'Moabit']

##############################################################################################

puts '🌱 Creating users...'


user1 = User.new(
    email: "lin@example.com",
    first_name: "Lin",
    last_name: "Huiyin",
    password: '123456',
    password_confirmation: '123456',
    username: "lin14",
    description: "I come from a beautiful island country - Taiwan, famous with bubble tea, beef noodles, stinky tofu, and many more delicious street foods. I am a vegetarian for more than 15 years since I was in high school. I love to cook and EAT!"
  )
user1.remote_photo_url = "https://images.unsplash.com/photo-1555922927-32479f120fbf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1875&q=80"
user1.save!

user2 = User.new(
    email: "nathalie@example.com",
    first_name: "Nathalie",
    last_name: "Kelley",
    password: '123456',
    password_confirmation: '123456',
    username: "nathalie14",
    description: "I studied Biology and graduated from a PhD in 2010. Creative cooking has always been a big part of my life, as I love researching on new concepts and always make my own plates.Looking forward to meeting you and hosting you at my home!"
  )
user2.remote_photo_url = "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
user2.save!

user3 = User.new(
    email: "angela@example.com",
    first_name: "Angela",
    last_name: "Ferrari",
    password: '123456',
    password_confirmation: '123456',
    username: "angela14",
    description: "I love chatting and travelling. I love my children and my house, and I maniacally take care my sourdough, the heart of many of my dishes! I love the sea and winter Sundays spent on the couch with the remote in my hand and a good tea."
  )
user3.remote_photo_url = "https://images.unsplash.com/photo-1525450280520-7d542a86e065?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
user3.save!

user4 = User.new(
    email: "aki@example.com",
    first_name: "Aki",
    last_name: "Nakamura",
    password: '123456',
    password_confirmation: '123456',
    username: "aki14",
    description: "Konnichiwa !! Hello, My name is Aki. I lived in Paris, Tokyo and tours for work. Nowadays, I am in Berlin and decided to work free-lance. I am a fusion chef at home. I invite you to come share a meal with me at home: a great time to talk while you discover the taste of Japanese cuisine 😃 "
  )
user4.remote_photo_url = "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80"
user4.save!

user5 = User.new(
    email: "veronika@example.com",
    first_name: "Veronika",
    last_name: "Lewandowski",
    password: '123456',
    password_confirmation: '123456',
    username: "nika14",
    description: "I am a passionate cook. I learned everything about cooking from my grandmother whom I have seen cook fresh lunches and dinners everyday. "
  )
user5.remote_photo_url = "https://images.unsplash.com/photo-1504703395950-b89145a5425b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
user5.save!

user6 = User.new(
  email: "paulo@example.com",
    first_name: "Paulo",
    last_name: "Silva",
    password: '123456',
    password_confirmation: '123456',
    username: 'Paulo',
    description: "I'm a 39 year old Chef. I am passionate about food, travel, and music. I love to talk about different cuisines, culture and traditions."
  )
user6.remote_photo_url = "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
user6.save!

user7 = User.new(
    email: "axel@example.com",
    first_name: "Axel",
    last_name: "Weber",
    password: '123456',
    password_confirmation: '123456',
    username: 'axel14',
    description: "An avid traveler, free-lancer and a passionate foodie. I love to share German tradition and personal values with people from all over the world. Apart from German cusine, I really enjoy French and Mexican cuisines and a well chosen selection of different herbs and spices."
  )
user7.remote_photo_url = "https://images.unsplash.com/photo-1496346236646-50e985b31ea4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
user7.save!

user8 = User.new(
  email: "elizabeth@example.com",
    first_name: "Elizabeth",
    last_name: "Martinez",
    password: '123456',
    password_confirmation: '123456',
    username: 'jose14',
    description: 'I moved here with my husband and we longed to share our gastronomic culture with our new friends.'
  )
user8.remote_photo_url = "https://images.unsplash.com/photo-1509955252650-8f558c2b8735?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
user8.save!

user9 = User.new(
  email: "kiara@example.com",
    first_name: "Kiara",
    last_name: "Malhotra",
    password: '123456',
    password_confirmation: '123456',
    username: 'rutu14',
    description: 'Namaste! I am from the beautiful city of dreams, Mumbai. As a child, my love for poha(beaten rice with spices) has made me curious about cooking. I am excited to share stories about the food, culture and lifestyle of the people living in different parts of India.',
  )
user9.remote_photo_url = "https://images.unsplash.com/photo-1479936343636-73cdc5aae0c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
user9.save!

user10 = User.new(
  email: "rich@example.com",
    first_name: "Rich",
    last_name: "O' Grady",
    password: '123456',
    password_confirmation: '123456',
    username: 'rich14',
    description: 'I love to travel and very passionate about my work and food.',
  )
user10.remote_photo_url = "https://ca.slack-edge.com/T02NE0241-U7EQKD1U1-f702e41763fd-512"
user10.save!



puts "🎉 Added users"

####################################################################################################

puts '🌱 Creating events...'

  event1 = Event.new(
    name: "Enjoy the scrumptious momos!",
    event_date: DateTime.new(2021, 12, 15, 18, [0, 30].sample, 0),
    description: "You will be eating home comfort food, which you may not be able to eat it if you are not invited to a Taiwanese family.It will be vegetarian and vegan since we need to also share our love and care to the environment and animals. However, don't you worry, it will still be very delicious!",
    cuisine: 'Chinese',
    max_guests: 10,
    booked_guests: 0,
    price_per_guest: (5..20).to_a.sample,
    user_id: user1.id,
    status: 'open',
    address: districts.sample
  )
  event1.remote_photo_url = "https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=80&q=80"
  event1.save!

  event2 = Event.new(
    name: "Peruvian dinner",
    event_date: DateTime.new(2021, 12, 07, 18, [0, 30].sample, 0),
    description: "Eric and I welcome you to our home! You will enjoy your amuse bouche with a piano and electronics live performance from Eric in our home studio-living room. Afterwards, we will go to the dining room, where you will enjoy the rest of the Menu. The menu is inspired on some of the most emblematic dishes from Perú, my native country.",
    cuisine: 'Peruvian',
    max_guests: 10,
    booked_guests: 0,
    price_per_guest: (5..20).to_a.sample,
    user_id: user2.id,
    status: 'open',
    address: districts.sample
  )
  event2.remote_photo_url = "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event2.save!


  event3 = Event.new(
    name: "Don't be upsetti, eat some spaghetti!",
    event_date: DateTime.new(2021, 12, 10, 19, [0, 30].sample, 0),
    description: "Ossobuco with risotto or pasta. Start with some appetizer and then you will be amazed if you eat our ossobuco with risotto or garlic oil pasta. ",
    cuisine: 'Italian',
    max_guests: 10,
    booked_guests: 0,
    price_per_guest: (5..20).to_a.sample,
    user_id: user3.id,
    status: 'open',
    address: districts.sample
  )
  event3.remote_photo_url = "https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event3.save!

  event4 = Event.new(
    name: "Keep calm and eat sushi",
    event_date: DateTime.new(2021, 12, 02, 19, [0, 30].sample, 0),
    description: "Discover and taste the individual and characteristic peculiarities and flavors of the Orange Wine in combination with the Japanese menu.",
    cuisine: 'Japanese',
    max_guests: 10,
    booked_guests: 0,
    price_per_guest: (5..20).to_a.sample,
    user_id: user4.id,
    status: 'open',
    address: districts.sample
  )
  event4.remote_photo_url = "https://images.unsplash.com/photo-1563245370-cd55e7c95ff4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event4.save!


event5 = Event.new(
    name: "Enjoy the dumplings",
    event_date: DateTime.new(2021, 12, 18, 18, [0, 30].sample, 0),
    description: "Savor the Pierogi which is made by wrapping unleavened dough around a sweet filling.",
    cuisine: 'Polish',
    max_guests: 10,
    booked_guests: 0,
    price_per_guest: (5..20).to_a.sample,
    user_id: user5.id,
    status: 'open',
    address: districts.sample
  )
  event5.remote_photo_url = "https://images.unsplash.com/photo-1513862153653-f8b7324e1779?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event5.save!

  event6 = Event.new(
    name: "Get cosy with Bacalhau!",
    event_date: DateTime.new(2021, 12, 06, 19, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'Portuguese',
    max_guests: 10,
    booked_guests: 3,
    price_per_guest: (5..20).to_a.sample,
    user_id: user6.id,
    status: 'open',
    address: districts.sample
  )
  event6.remote_photo_url = "https://images.unsplash.com/photo-1567056602606-6172dedda3ac?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event6.save!

  event7 = Event.new(
    name: "Let's eat sausages together!",
    event_date: DateTime.new(2021, 11, 24, 18, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'German',
    max_guests: 10,
    booked_guests: 3,
    price_per_guest: (5..20).to_a.sample,
    user_id: user7.id,
    status: 'open',
    address: districts.sample
  )
  event7.remote_photo_url = "https://images.unsplash.com/photo-1547424450-75ec164925ad?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event7.save!

  event8 = Event.new(
    name: "Friends don't let friends go Taco-less!",
    event_date: DateTime.new(2021, 12, 12, 18, [0, 30].sample, 0),
    description: "Enjoy a 3-course meal which includes a fish dish, a meat dish, and, of course, dessert—this course is not suitable for vegans or vegetarians. Talk about cooking techniques and delicious meals made out of fresh ingredients. Enjoy wine and olive oils while communicating about the history of Portuguese cuisine. Sit down and break bread with your fellow foodies. Leave the course with the knowledge to prepare the meal at home and a belly full of food and memories.",
    cuisine: 'Mexican',
    max_guests: 10,
    booked_guests: 0,
    price_per_guest: (5..20).to_a.sample,
    user_id: user8.id,
    status: 'open',
    address: districts.sample
  )
  event8.remote_photo_url = "https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
  event8.save!

  event9 = Event.new(
    name: "The Royal Thali",
    event_date: DateTime.new(2021, 12, 19, 18, [0, 30].sample, 0),
    description: "The evening will be filled with interesting conversations, culinary discoveries, wagging tails (courtesy my dogs) and new friendships. The meal will be served in the family dining room, after which guests can lounge with a cup of tea or coffee while we test you on culinary games (if you aren't in a food coma)! Come and let us pamper your taste buds.",
    cuisine: 'Indian',
    max_guests: 10,
    booked_guests: 3,
    price_per_guest: (5..20).to_a.sample,
    user_id: user9.id,
    status: 'open',
    address: districts.sample
  )
  event9.remote_photo_url = "http://blog.byoh.in/wp-content/uploads/2016/04/Starter2.jpeg"
  event9.save!

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
p13.remote_photo_url = 'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
p13.save!

# Picture.new(event: event1, photo: 'https://images.unsplash.com/photo-1527997921830-de1cf1f9b430?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event1, photo: 'https://images.unsplash.com/photo-1542990254-7174ee186dd1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p21 = Picture.new(event: event2)
p21.remote_photo_url = 'https://www.quasarex.com/wp-content/uploads/2018/10/Peruvian-foods-3.jpg'
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
# p31.remote_photo_url = "https://images.unsplash.com/photo-1516100882582-96c3a05fe590?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
p31.remote_photo_url = "https://images.unsplash.com/photo-1567423285116-c31e6a93e939?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
p31.save!
p32 = Picture.new(event: event3)
p32.remote_photo_url = 'https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
# p32.remote_photo_url = 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p32.save!
p33 = Picture.new(event: event3)
p33.remote_photo_url = 'https://images.unsplash.com/photo-1458644267420-66bc8a5f21e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1493&q=80'
# p33.remote_photo_url = 'https://images.unsplash.com/photo-1551892374-ecf8754cf8b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p33.save!

# Picture.new(event: event3, photo: 'https://images.unsplash.com/photo-1571167366136-b57e07761625?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event3, photo: 'https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event3, photo: 'https://images.unsplash.com/photo-1551892374-ecf8754cf8b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p41 = Picture.new(event: event4)
# p41.remote_photo_url = 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p41.remote_photo_url = 'https://images.unsplash.com/photo-1563245370-cd55e7c95ff4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p41.save!
p42 = Picture.new(event: event4)
p42.remote_photo_url = "https://images.unsplash.com/photo-1568096889942-6eedde686635?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
p42.save!
p43 = Picture.new(event: event4)
p43.remote_photo_url = 'https://images.unsplash.com/photo-1559589311-5f288a90d311?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80'
p43.save!

# Picture.new(event: event4, photo: 'https://images.unsplash.com/photo-1563245370-cd55e7c95ff4?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event4, photo: 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event4, photo: 'https://images.unsplash.com/photo-1516211881327-e5120a941edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

p51 = Picture.new(event: event5)
# p51.remote_photo_url = 'https://images.unsplash.com/photo-1513862153653-f8b7324e1779?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p51.remote_photo_url = "https://cdn.pixabay.com/photo/2016/08/19/17/56/goulash-1605840_960_720.jpg"
p51.save!
p52 = Picture.new(event: event5)
# p52.remote_photo_url = 'https://images.unsplash.com/photo-1496114212242-bac8bd9de53d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p52.remote_photo_url = 'https://cdn.pixabay.com/photo/2016/04/14/13/09/country-sausage-1328865_960_720.jpg'
p52.save!
p53 = Picture.new(event: event5)
# p53.remote_photo_url = 'https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
p53.remote_photo_url = 'https://cdn.pixabay.com/photo/2018/05/29/00/49/dumplings-3437689_960_720.jpg'
p53.save!

# Picture.new(event: event5, photo: 'https://images.unsplash.com/photo-1513862153653-f8b7324e1779?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event5, photo: 'https://images.unsplash.com/photo-1496114212242-bac8bd9de53d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event5, photo: 'https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
p61 = Picture.new(event: event6)

p61.remote_photo_url = 'https://images.unsplash.com/photo-1567056602606-6172dedda3ac?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'
# p61.remote_photo_url = "https://res.cloudinary.com/dfmcf9wdw/image/upload/v1575543808/n85xpnnhqhwjs5rhr5cw.jpg"
p61.save!
p62 = Picture.new(event: event6)
# p62.remote_photo_url = 'https://www.maxpixel.net/static/photo/2x/Food-Cooking-Lisbon-Egg-Sausage-Flavor-Portugal-4161518.jpg'
p62.remote_photo_url = 'https://images.food52.com/wLI5es1lZKgegjqE2CaLHxrJ3cc=/1556x1037/ba9e4f40-4eff-4de8-818f-9e373251e9c6--2017-1116_portuguese-pesticitos_rocky-luten_038.jpg'
# p62.remote_photo_url = "https://images.food52.com/gOAUDOJcvS-_x7w2n8otUk_qglk=/1536x1022/2603a942-a607-4062-aea8-59179de6aa6a--2015_1006_simple-seafood-stew_bobbi-lin_12742.jpg"
p62.save!
p63 = Picture.new(event: event6)
p63.remote_photo_url = "https://images.unsplash.com/photo-1448043552756-e747b7a2b2b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1249&q=80"
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
p83.remote_photo_url = 'https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'
p83.save!

p91 = Picture.new(event: event9)
p91.remote_photo_url = 'https://images.unsplash.com/photo-1542367592-8849eb950fd8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80'
p91.save!
p92 = Picture.new(event: event9)
p92.remote_photo_url = 'https://images.unsplash.com/photo-1572099107898-46f22b3af4f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=657&q=80'
p92.save!
p93 = Picture.new(event: event9)
p93.remote_photo_url = 'https://images.unsplash.com/photo-1517244683847-7456b63c5969?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
p93.save!

# Picture.new(event: event8, photo: 'https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event8, photo: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!
# Picture.new(event: event8, photo: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80').save!

puts '🎉 Added Pictures'

#############################################################################

puts '🌱 Creating bookings...'

# 10.times do
#   booking = Booking.new(
#     user_id: User.all.sample.id,
#     event_id: Event.all.sample.id,
#     number_of_guests: (1..3).to_a.sample,
#   )
#   booking.save!
# end

booking11 = Booking.new(
  user_id: user1.id,
  event_id: event6.id,
  number_of_guests: 1
  )
booking11.save!

booking12 = Booking.new(
  user_id: user2.id,
  event_id: event6.id,
  number_of_guests: 1
  )
booking12.save!

booking13 = Booking.new(
  user_id: user3.id,
  event_id: event6.id,
  number_of_guests: 1
  )
booking13.save!

booking14 = Booking.new(
  user_id: user10.id,
  event_id: event9.id,
  number_of_guests: 1
  )
booking14.save!

booking15 = Booking.new(
  user_id: user5.id,
  event_id: event9.id,
  number_of_guests: 2
  )
booking15.save!

booking16 = Booking.new(
  user_id: user8.id,
  event_id: event7.id,
  number_of_guests: 1
  )
booking16.save!

booking17 = Booking.new(
  user_id: user9.id,
  event_id: event7.id,
  number_of_guests: 2
  )
booking17.save!

puts "🎉 Added bookings"

##############################################################################

puts '🌱 Creating reviews...'

# 10.times do
#   review = Review.new(
#     booking_id: Booking.all.sample.id,
#     rating: (3..5).to_a.sample,
#     content: Faker::Restaurant.review,
#   )
#   review.save!
# end

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

review14 = Review.new(
   booking_id: booking14.id,
   rating: (4..5).to_a.sample,
   content: "Kiara was the perfect host. She took great pride in serving us authentic dishes from her Maharashtra region. Her passion to share her knowledge for local procedure and cooking technique gave us a very memorable experience."
   )
review14.save!

review15 = Review.new(
   booking_id: booking15.id,
   rating: (4..5).to_a.sample,
   content: "Kiara was very cheerful and explained us the uses of several spices and their significance to Indian cooking, which she is very passionate about."
   )
review15.save!

review16 = Review.new(
   booking_id: booking16.id,
   rating: (4..5).to_a.sample,
   content: "Axel served different types of sausages and they were terrific and of super high quality."
   )
review16.save!

review17 = Review.new(
   booking_id: booking16.id,
   rating: (4..5).to_a.sample,
   content: "The white asparagus appetizer served with Hollandaise sauce was a perfect combination with the sausages. Absolutely loved the food!"
   )
review17.save!


puts "🎉 Added reviews"

puts '🌱 Creating messages...'

message11 = Message.new(
  content: "Hey Paulo, I am allergic to sour cream. It would be really nice if you can confirm whether you are using sour cream in any of the dishes? Thanks!",
  user_id: user1.id,
  event_id: event6.id
  )
message11.save!

message12 = Message.new(
  content: "Hello Lin. Don't worry at all! There won't be sour cream in any of the dishes.",
  user_id: user6.id,
  event_id: event6.id
  )
message12.save!



