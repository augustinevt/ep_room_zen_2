require 'rails_helper'

RSpec.describe House, type: :model do

  it {should have_many(:requests)}
  it {should belong_to(:user)}
  it {should have_many(:requests)}
  it {should have_many(:responses)}
  it {should have_many(:images)}


  it 'should make default responses' do
    FactoryGirl.create_list(:question, 10)
    house = FactoryGirl.create(:house)
    expect(house.responses.count).to equal(10)
  end
end
