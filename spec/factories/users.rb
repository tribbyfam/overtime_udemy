FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  factory :user do
    first_name "John"
    last_name "Snow"
    email {generate :email}
    password "123123"
    password_confirmation "123123"
  end

  factory :second_post, class: "AdminUser" do
    first_name "Admim"
    last_name "Snow"
    email {generate :email}
    password "123123"
    password_confirmation "123123"
  end
end