require 'rails_helper'

RSpec.describe UserProfile, type: :model do
   it { should belong_to(:user) }
   it { should validate_presence_of :username }
end
