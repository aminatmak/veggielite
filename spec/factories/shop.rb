FactoryBot.define do
  factory :shop, class 'Shop' do
    name { :maison_duffour }
    address { 'Warehouse 7 Street 10A - Al Quoz Industrial Area 3 - Dubai' }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    phone_number { '00971509551520' }
    email { 'contact@maisonduffour.com' }
    product { Faker::Food.fruits }
  end
end