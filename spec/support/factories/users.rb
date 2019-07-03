FactoryBot.define do
  factory :user do
    email { 'user@jera-flix.herokuapp.com' }
    password { "password"} 
    password_confirmation { "password" }
  end
end
