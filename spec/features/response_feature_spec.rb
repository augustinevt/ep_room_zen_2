require 'rails_helper'

describe 'The Response feature' do
  it 'should allow user to update response', js: true do
    question = FactoryGirl.create(:question)
    profile = FactoryGirl.create(:user_profile)
    login_as(profile.user, scope: :user)
    visit user_profile_path(profile)
    first('label').trigger('click')
    expect(page).to have_content("response successfully updated")
  end
end
