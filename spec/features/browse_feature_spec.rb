require 'rails_helper'

describe 'The browse feaure should' do
  it 'should allow users to click on a thumb and see details rendered', js: true do
    FactoryGirl.create_list(:question,10)
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)
    house = FactoryGirl.create(:house)
    visit houses_path
    click_on house.title
    expect(page).to have_content(house.address)
  end
end
