FactoryGirl.define do

  pw = Faker::Internet.password

  factory :user do
    first_name             Faker::Name.first_name
    last_name              Faker::Name.last_name

    email                  Faker::Internet.email
    password               pw
    password_confirmation  pw
    confirmed_at           Time.now
  end
end
