FactoryGirl.define do

  factory :question do
    title "Yo ho"
  end

  factory :image do
    caption "MyString"
    body ""
    imageable nil
  end

  factory :request do
    association :user
    association :house
    message "MyString"
  end

  factory :house do
    title "MyString"
    address "MyString"
    association :user
  end

  factory(:new_user) do
    email 'Miya@moto.com'
    password 'foobar'
    password_confirmation 'foobar'
  end

  factory :user do
    sequence(:email) {|n| "test#{n}@example.com"}
    password 'foobar'
  end

  factory(:user_profile) do
    first_name("Miyamoto")
    last_name("Musashi")
    username("MM")
    association :user
  end

end
