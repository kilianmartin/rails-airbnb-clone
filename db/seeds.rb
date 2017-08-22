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
    user: User.find(User.ids[0])
  },
  {
    title: "English country-style kitchen",
    address: "London",
    description: "Rural charm in an urban setting",
    user: User.find(User.ids[1])
  },
  {
    title: "Soupe à l'oignon kitchen",
    address: "Paris",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[2])
  },
  {
    title: "Prego kitchen",
    address: "Lisbon",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[3])
  },
  {
    title: "Sushi kitchen",
    address: "Tokyo",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[4])
  },
  {
    title: "Tapas kitchen",
    address: "Barcelona",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[5])
  },
  {
    title: "Fine European dining",
    address: "Brussels",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[6])
  },
  {
    title: "Indonesian outdoor kitchen",
    address: "Bali",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[7])
  },
  {
    title: "High fashion interior designed kitchen",
    address: "Milan",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae venenatis velit. Vivamus porttitor nisi pulvinar, aliquet tellus vel, gravida.",
    user: User.find(User.ids[8])
  },
]

kitchen_contents.each do |kitchen_content|
  Kitchen.create(kitchen_content)
end

booking_contents = [
  {
  start_date: Date.new(2017,8,21),
  end_date: Date.new(2017,8,25),
  status: "Pending",
  user_id: User.ids[1],
  kitchen_id: Kitchen.ids[0]
  },
  {
  start_date: Date.new(2017,9,01),
  end_date: Date.new(2017,9,03),
  status: "Confirmed",
  user_id: User.ids[0],
  kitchen_id: Kitchen.ids[1]
  }
]

booking_contents.each do |booking_content|
  Booking.create(booking_content)
end


