class House < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :applicants, through: :requests, source: :user
  has_many :questions, through: :compatibilities

end
