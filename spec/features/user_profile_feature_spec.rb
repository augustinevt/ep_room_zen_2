require 'rails_helper'

describe 'The User Profile Feature' do

  it 'should allow a new user to ' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit new_user_profile_path
    fill_in 'First name', with: 'Fred'
    fill_in 'Last name', with: 'Armison'
    fill_in 'Username', with: 'Pdx69'
    click_on 'Create User profile'
    expect(page).to have_content('Fred')
  end

  it 'should do something test' do
    user = FactoryGirl.create(:user_profile)
  end
end
