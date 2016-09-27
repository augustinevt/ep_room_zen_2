require 'rails_helper'

RSpec.describe Request, type: :model do

  it {should belong_to :user}
  it {should belong_to :house}
  it {should have_many :comments}

  it 'should compute compatibility before saving' do
    FactoryGirl.create_list(:question, 10)
    user = FactoryGirl.create(:user_profile, username: 'KJS')
    house = FactoryGirl.create(:house)
    request = Request.create(user: user.user, house: house)
    expect(request.compatibility).to equal(100)
  end
end
