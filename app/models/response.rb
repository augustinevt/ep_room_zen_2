class Response < ApplicationRecord
  belongs_to :respondable, polymorphic: true
end
