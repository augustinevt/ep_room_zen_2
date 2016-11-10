module ApplicationHelper
  def show_compatibility(user, house)
    house_responses = house.responses.sort_by(&:created_at)
    applicant_responses = user.user_profile.responses.sort_by(&:created_at)

    diff = house_responses.each_with_index.inject(0) do |sum, value|
      sum + (value[0].value - applicant_responses[value[1]].value).abs
    end

    divisor = (Question.all.count.to_i * 5)
    dividend = (Question.all.count * 5 - diff)

    (dividend.to_f/divisor.to_f * 100)

  end
end
