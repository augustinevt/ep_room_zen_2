require 'rails_helper'

describe 'The user image feature' do
  it 'should allow a user to add an image', js: true do
    user_profile = FactoryGirl.create(:user_profile)
    login_as(user_profile.user, scope: :user)

    visit user_profile_path(user_profile)

    click_on 'Add Image'

    attach_file 'Body', 'spec/spec_assets/foo.jpg'

    fill_in 'Caption', with: 'Photo Caption'

    click_on 'Create Image'

    expect(page).to have_content "image was saved"
  end
end
