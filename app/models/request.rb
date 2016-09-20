class Request < ApplicationRecord

  before_save :compute_compatibility

  belongs_to :user
  belongs_to :house
  has_many :comments

  def compute_compatibility
    house_responses = self.house.responses.sort_by(&:created_at)
    applicant_responses = self.user.user_profile.responses.sort_by(&:created_at)

    diff = house_responses.each_with_index.inject(0) do |sum, value|
      sum + (value[0].value - applicant_responses[value[1]].value).abs
    end

    dividend = (Question.all.count * 4)
    divisor = (Question.all.count * 4 - diff)

    self.compatibility = (dividend.to_f/divisor.to_f * 100)
  end
end
