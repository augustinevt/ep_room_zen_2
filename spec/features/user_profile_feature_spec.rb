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
    user_profile = FactoryGirl.create(:user_profile)
  end

  it 'should show the default responses on the show page' do
    FactoryGirl.create_list(:question, 9)
    question = FactoryGirl.create(:question)
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)
    visit user_profile_path(user_profile)
    expect(page).to have_content(question.title)
  end

  it 'should allow a user to select a request thumb and have the details show', js: true do
    FactoryGirl.create_list(:question, 10)
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)
    request_1 = FactoryGirl.create(:request, user: user_profile.user, message: 'foo1')
    request_2 = FactoryGirl.create(:request, user: user_profile.user, message: 'foo2')
    visit user_profile_path(user_profile)
    find_by_id("request_#{request_2.id}").trigger('click')
    save_and_open_page
    expect(page).to have_content('foo2')
  end
end
