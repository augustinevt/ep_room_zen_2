require 'rails_helper'

RSpec.describe User, type: :model do

 it {should have_one :user_profile}
 it {should have_one :house}
 it {should have_many :requests}
 it {should have_many :requested_houses}
 it {should have_many :comments}

end
