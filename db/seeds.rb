# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitchen.destroy_all
User.destroy_all

9.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end



# Use later maybe, when we update user model: name: Faker::Internet.user_name(5..8)

kitchen_contents = [
  {
    title: "Bratwurst kitchen",
    address: "Berlin",
    description: "Intimate kitchen/dining space perfect for a bratwurst party",
    user: User.find(User.ids[0]),
    price: 15
  },
  {
    title: "English country-style kitchen",
    address: "London",
    description: "Rural charm in an urban setting",
    user: User.find(User.ids[1]),
    price: 28
  },
  {
    title: "Soupe à l'oignon kitchen",
    address: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[2]),
    price: 40
  },
  {
    title: "Prego kitchen",
    address: "Lisbon",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[3]),
    price: 19
  },
  {
    title: "Sushi kitchen",
    address: "Tokyo",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[4]),
    price: 30
  },
  {
    title: "Tapas kitchen",
    address: "Barcelona",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[5]),
    price: 17
  },
  {
    title: "Fine European dining",
    address: "Brussels",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[6]),
    price: 25
  },
  {
    title: "Indonesian outdoor kitchen",
    address: "Bali",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[7]),
    price: 35
  },
  {
    title: "High fashion interior designed kitchen",
    address: "Milan",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[8]),
    price: 50
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
    user_id: User.ids[1],
    kitchen_id: kitchen
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[2],
    kitchen_id: kitchen
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[3],
    kitchen_id: kitchen
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[4],
    kitchen_id: kitchen
    },
     {
    start_date: Date.new(2017,8,21),
    end_date: Date.new(2017,8,25),
    status: "Pending",
    user_id: User.ids[5],
    kitchen_id: kitchen
    }])
end

for booking in Booking.ids
  Review.create({
    title: Faker::Hacker.say_something_smart,
    rating: rand(1..5),
    comment: Faker::Lorem.paragraph(3, false, 4),
    booking_id: 1
  }
  )
end
