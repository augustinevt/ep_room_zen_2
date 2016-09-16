FactoryGirl.define do

  factory(:new_user) do
    email 'Miya@moto.com'
    password 'foobar'
    password_confirmation 'foobar'
  end

  factory :user do
    email 'Miya@moto.com'
    password 'foobar'
  end

  factory(:user_profile) do
    first_name("Miyamoto")
    last_name("Musashi")
    username("MM")
    association :user
  end

end
