FactoryBot.define do
  factory :order_detail do
    order { nil }
    food { nil }
    quantity { 1 }
  end
end
