FactoryBot.define do
  factory :order do
    customer { nil }
    status { "MyString" }
    date { "2022-04-22 15:34:58" }
  end
end
