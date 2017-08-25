# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitchen.destroy_all
User.destroy_all

18.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end



# Use later maybe, when we update user model: name: Faker::Internet.user_name(5..8)

kitchen_contents = [
  {
    title: "Bratwurst kitchen",
    address: "Am Wriezener Bahnhof, 10243 Berlin",
    description: "Intimate kitchen/dining space perfect for a bratwurst party",
    user: User.find(User.ids[0]),
    price: 15
  },
  {
    title: "The Master Grill",
    address: "Cowper St, London EC2A 4AP, Vereinigtes Königreich",
    description: "Rooftop kitchen with everything that is needed for a perium grill experience.",
    user: User.find(User.ids[1]),
    price: 28
  },
  {
    title: "Granny's kitchen",
    address: "Hauptstrasse 15, 10317 Berlin",
    description: "Rural charm in an urban setting",
    user: User.find(User.ids[1]),
    price: 28
  },
  {
    title: "Soupe à l'oignon kitchen",
    address: "Alt-Stralau 70, 10245 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[2]),
    price: 40
  },
  {
    title: "Prego kitchen",
    address: "Brückenstrasse 3, 10179 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[3]),
    price: 19
  },
  {
    title: "Cupcake Backery",
    address: "4/5 Elephant Rd, London SE17 1LB, Vereinigtes Königreich",
    description: "Cute and girly kitchen, perfect for sweet backery sessions!",
    user: User.find(User.ids[0]),
    price: 15
  },
  {
    title: "Sushi kitchen",
    address: "Vor dem Schlesischen Tor 3, 10997 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[4]),
    price: 30
  },
  {
    title: "Tapas kitchen",
    address: "Markgrafendamm 24c, 10245 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[5]),
    price: 17
  },
  {
    title: "Fine European dining",
    address: "Gerichtstrasse 65, 13347 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[6]),
    price: 25
  },
  {
    title: "Stylish Soul Kitchen",
    address: "17A Harrington Road, London, South Kensington SW7 3ES, Vereinigtes Königreich",
    description: "Centrally located kitchen with inspiering architecture. Perfect for Asian soul cuisine cooking!",
    user: User.find(User.ids[2]),
    price: 40
  },
  {
    title: "Indonesian outdoor kitchen",
    address: "Falckensteinstr. 49, 10997 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[7]),
    price: 35
  },
  {
    title: "High fashion interior designed kitchen",
    address: "Kopenicker Strasse 70, 10179 Berlin",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[8]),
    price: 50
  },
  {
    title: "British country style",
    address: "77A Charterhouse St, Clerkenwell, London EC1M 6HJ, Vereinigtes Königreich",
    description: "This kitchen will remind you of your childhood, when visiting your granny in the country side. Sweet, elegant, and cozy.",
    user: User.find(User.ids[3]),
    price: 19
  },
]

kitchen_contents.each do |kitchen_content|
  Kitchen.create(kitchen_content)
end

for kitchen in Kitchen.ids
  Booking.create([
    {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[0],
    kitchen_id: Kitchen.ids[0]
    },
    {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[1],
    kitchen_id: Kitchen.ids[1]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[2],
    kitchen_id: Kitchen.ids[2]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[3],
    kitchen_id: Kitchen.ids[3]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[4],
    kitchen_id: Kitchen.ids[4]
    },

    {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[5],
    kitchen_id: Kitchen.ids[5]
    },

    {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[6],
    kitchen_id: Kitchen.ids[6]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[7],
    kitchen_id: Kitchen.ids[7]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[8],
    kitchen_id: Kitchen.ids[8]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[9],
    kitchen_id: Kitchen.ids[9]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[10],
    kitchen_id: Kitchen.ids[10]
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[11],
    kitchen_id: Kitchen.ids[11]
    }])
end


REVIEW_PARAMS = [
  {
    title: "Great spatula in this kitchen. Love it.",
    rating: rand(1..5),
    comment: "This kitchen was soo great. I particularly loved the spatula.",
  },

  {
    title: "Wok an awesome kitchen!",
    rating: rand(1..5),
    comment: "Wow. What an awesome wok in this kitchen. Nice blender too. Could do with a better wooden spoon.",
  },

  {
    title: "Great space, highly recommended",
    rating: rand(1..5),
    comment: "I really enjoyed this kitchen. Such a great space for cooking and dining with friends",
  },

  {
    title: "THIS KITCHEN HAS AN AWESOME BLENDER",
    rating: rand(1..5),
    comment: "I went to this kitchen expecting to chop. But I came away having successfully blended a lot too. Excellent blending, I will miss the blender.",
  },

  {
    title: "Wowzer - Global knives - cooolz. Lol.",
    rating: rand(1..5),
    comment: "Really great equipment in this kitchen. So please not to have some crappy Ikea stuff, but proper chef quality utensils.",
  },

  {
    title: "Leaky tap, over-priced, want my money back.",
    rating: rand(1..5),
    comment: "Do not book this place. Looks good in the pics but the tap leaks",
  }]



Booking.all.each do |booking|
  REVIEW_PARAMS.each do |review_params|
    r = Review.new(review_params)

    r.booking = booking
    r.save!
  end

  booking.save!

end
