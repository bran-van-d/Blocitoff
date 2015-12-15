include Faker

#Create Users

  5.times do
    user = User.create!(
    first_name:   Faker::Name.first_name,
    last_name:    Faker::Name.last_name,
    email:        Faker::Internet.email,
    password:     Faker::Internet.password,
    confirmed_at: Time.now
    )
  end
  users = User.all

  50.times do
    item = Item.create!(
      user:  users.sample,
      name:  Faker::Lorem.sentence
    )
  end

  # Create an admin user
  admin = User.create!(
  first_name:     'Admin',
  last_name:      'User',
  email:          'admin@example.com',
  password:       'helloworld',
  confirmed_at:   Time.now
  )


puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."
