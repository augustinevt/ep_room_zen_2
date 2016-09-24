require 'rails_helper'

describe 'The Response feature' do
  it 'should allow user to update response', js: true do
    question = FactoryGirl.create(:question)
    profile = FactoryGirl.create(:user_profile)
    login_as(profile.user, scope: :user)
    visit user_profile_path(profile)
    choose "response_#{question.id}_value_4"
    click_on "Submit #{question.id}"
    expect(page).to have_content("response successfully updated")
  end
end
