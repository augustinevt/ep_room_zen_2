require 'rails_helper'

describe 'The user dashboard feautre' do

  it 'should be the root route of the app' do
    up = FactoryGirl.create(:user_profile)
    login_as(up.user, scope: :user)
    visit root_path
    expect(page).to have_content(up.first_name)
  end

  it 'should show browse after user clicks on BROWSE link' do
    up = FactoryGirl.create(:user_profile)
    house = FactoryGirl.create(:house)
    login_as(up.user, scope: :user)
    visit root_path
    click_on 'BROWSE'
    expect(page).to have_content(house.title)
  end
end
