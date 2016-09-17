class UserProfile < ApplicationRecord


  after_save :make_answers


  belongs_to :user
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_presence_of :username
  has_many :images, as: :imageable
  has_many :compatibilities
  has_many :questions, through: :compatibilities

  def make_answers
    Question.all.each do |q|
      c = self.compatibilities.create(response: 3, question_id: q.id)
    end
  end

end
