FactoryBot.define do
  factory :line_item do
    book_id { 1 }
    order_id { 1 }
    quantity { 1 }
    total_price { 1.5 }
  end
end
