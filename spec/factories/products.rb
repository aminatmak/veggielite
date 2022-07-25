FactoryBot.define do
  factory :product, class 'Product' do
    shop { :maison_duffour }
    product { :mango }
  end
end