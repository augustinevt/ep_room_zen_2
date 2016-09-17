class House < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :applicants, through: :requests, source: :user
  has_one :compatibility, as: :compatible
end
