class Response < ApplicationRecord
  belongs_to :respondable, polymorphic: true
  belongs_to :question
end
