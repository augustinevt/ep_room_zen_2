require 'rails_helper'

describe 'The browse feaure should' do
  it 'should allow users to click on a thumb and see details rendered', js: true do
    FactoryGirl.create_list(:question,10)
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)
    house = FactoryGirl.create(:house)
    visit houses_path
    click_on house.title
    save_and_open_page
    expect(page).to have_content(house.address)
  end

  it 'should allow users to click on a thumb and see details rendered', js: true do
    FactoryGirl.create_list(:question,10)
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)
    house = FactoryGirl.create(:house)
    house_2 = FactoryGirl.create(:house, address: 'Seattle, WA', title: 'Seattle')
    visit houses_path
    save_and_open_page
    fill_in 'search_input', with: 'Seattle'
    expect(page).to have_content('Seattle')
  end

end
