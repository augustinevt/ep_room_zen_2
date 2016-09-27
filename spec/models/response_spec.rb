require 'rails_helper'

RSpec.describe Response, type: :model do
 it {should belong_to :respondable}
 it {should belong_to :question}
end
