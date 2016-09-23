require 'rails_helper'

describe 'The user image feature' do
  xit 'should allow a user to add an image' do
    user_profile = FactoryGirl.create(:user_profile)

    visit user_profile_path(user_profile)
    attach_file 'Body', 'spec/spec_assets/foo.jpg'

    fill_in 'Caption', with: 'Photo Caption'

    click_on 'Create Image'

    expect(page).to have_content "Photo Caption"
  end
end
