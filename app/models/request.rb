class Request < ApplicationRecord
  before_save :compute_compatibility
  belongs_to :user
  belongs_to :house

  def compute_compatibility
    user = self.user.user_profile.compatibilities.sort_by(&:created_at).map { |c| c.response }
    other = UserProfile.last.compatibilities.sort_by(&:created_at).map { |c| c.response }

    final = user.each_with_index.inject(0) do |sum, value|
      sum + (value[0] - other[value[1]]).abs
    end

    dividend = (Question.all.count * 4).to_f
    divisor = ((Question.all.count * 4) - final).to_f

    self.compatibility = (divisor / dividend * 100).floor

  end
end
