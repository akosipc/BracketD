FactoryGirl.define do

  factory :user do
    email       "example@example.com"
    first_name  "Testy"
    last_name   "McUserton"
    password    "password"
    password_confirmation "password"
  end

end
