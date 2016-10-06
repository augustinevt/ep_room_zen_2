class UserProfile < ApplicationRecord
  after_create :make_responses
  validates_presence_of :username

  belongs_to :user
  has_many :images, as: :imageable
  has_many :responses, as: :respondable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://upload.wikimedia.org/wikipedia/commons/1/1c/Ho_Chi_Minh_1946.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def make_responses
    c = 0
    Question.all.each do |q|
        c = self.responses.create(value: 3, question_id: q.id)
    end
  end
end
