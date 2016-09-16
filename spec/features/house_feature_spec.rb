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

end
