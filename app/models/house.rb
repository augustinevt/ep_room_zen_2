class House < ApplicationRecord

  after_save :make_responses

  belongs_to :user
  has_many :requests
  has_many :applicants, through: :requests, source: :user
  has_many :responses, as: :respondable

  def make_responses
    Question.all.each do |q|
      self.responses.create(value: 3, question_id: q.id)
    end
  end
end
