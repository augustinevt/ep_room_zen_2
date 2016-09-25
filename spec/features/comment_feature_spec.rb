require 'rails_helper'

describe 'The comment feature' do
  it 'should allow a user to create a comment', js: true do
    FactoryGirl.create_list(:question,10)
    user_profile = FactoryGirl.create(:user_profile)
    request = FactoryGirl.create(:request, user: user_profile.user)
    login_as(user_profile.user, scope: :user)
    visit user_profile_path(user_profile)
     
    fill_in 'Body', with: 'foo'
    click_on 'Create Comment'

    expect(page).to have_content('foo')
  end
end
