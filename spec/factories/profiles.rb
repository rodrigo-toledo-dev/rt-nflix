FactoryBot.define do
  factory :profile do
    user { nil }
    name { "MyString" }
    description { "MyText" }
    categories { "MyString" }
  end
end
