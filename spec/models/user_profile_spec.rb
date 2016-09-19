require 'rails_helper'

RSpec.describe UserProfile, type: :model do
   it { should belong_to(:user) }
   it { should validate_presence_of :username }
   it { should have_many :responses}

   it 'should add responses after save' do
     FactoryGirl.create_list(:question, 10)
     user = FactoryGirl.create(:user_profile)
     expect(user.responses.count).to equal(10)
   end
end
