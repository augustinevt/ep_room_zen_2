require 'rails_helper'

describe 'The house feature' do

  it 'should allow users to create a house' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit new_house_path
    fill_in 'Title', with: 'foo'
    fill_in 'Address', with: 'foo'
    click_on 'Create House'
    expect(page).to have_content 'foo'
  end

  it 'should allow a user to see houses' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    house_1 = FactoryGirl.create(:house)
    house_2 = FactoryGirl.create(:house)
    visit houses_path
    expect(page).to have_content(house_1.title)

  end

end
