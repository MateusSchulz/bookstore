FactoryBot.define do
  factory :order do
    user_id { 1 }
    name { "MyString" }
    address { "MyString" }
    city { "MyString" }
    state { "MyString" }
    total_price { 1.5 }
  end
end
