FactoryBot.define do
  factory :user do
    name { 'User JeraFlix' }
    birthday { '1985-01-01'.to_date }
    email { 'user@jera-flix.herokuapp.com' }
    password { "password"} 
    password_confirmation { "password" }
  end
end
