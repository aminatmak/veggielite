FactoryBot.define do
  factory :order, class: 'Order' do
    user { :amina }
    product { :mango }
    status { :completed }
    payment_method_types { :nil }
  end
end