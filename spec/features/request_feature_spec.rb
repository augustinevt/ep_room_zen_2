require 'rails_helper'

describe 'The request feature' do
  it 'should allow a user to apply to a house' do
    test_user_profile = FactoryGirl.create(:user_profile)
    login_as(test_user_profile.user, scope: :user)
    house = FactoryGirl.create(:house)
    visit house_path(house)
    click_on 'Apply'
    fill_in 'Message', with: 'hello'
    click_on 'Submit'
    expect(page).to have_content(test_user_profile.username)
  end


  it 'should show compatibility after creation' do
    FactoryGirl.create_list(:question, 10)
    house = FactoryGirl.create(:house)
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)
    visit house_path(house)
    click_on 'Apply'
    click_on 'Submit'
    expect(page).to have_content("100 %")
  end
end
