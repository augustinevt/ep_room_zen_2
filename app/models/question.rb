class Question < ApplicationRecord
  has_many :compatibilities
  has_one :user_profiles, through: :compatibilities
end
