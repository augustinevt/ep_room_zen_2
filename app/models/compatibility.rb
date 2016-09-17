class Compatibility < ApplicationRecord
  belongs_to :user_profile
  belongs_to :question
  validates :user_profile, uniqueness: {scope: :question}
end
