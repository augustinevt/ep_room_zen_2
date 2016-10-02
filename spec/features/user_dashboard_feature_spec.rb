# require 'rails_helper'
#
# describe 'The user dashboard feautre' do
#
#   it 'should be the root route of the app' do
#     up = FactoryGirl.create(:user_profile)
#     login_as(up.user, scope: :user)
#
#     visit root_path
#
#     expect(current_url).to have_content(user_dashboard_path)
#   end
# end
