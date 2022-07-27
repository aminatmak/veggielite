FactoryBot.define do
  factory :user, class: 'User' do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { '0509876768' }
    address { Faker::Address.full_address }
  end
end
