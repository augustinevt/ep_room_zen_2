class House < ApplicationRecord
  paginates_per 3
  geocoded_by :address
  after_validation :geocode

  after_save :make_responses

  belongs_to :user
  has_many :requests
  has_many :applicants, through: :requests, source: :user
  has_many :responses, as: :respondable
  has_many :images, as: :imageable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://static.tumblr.com/0ee21b1cf4ad4b2057305b00cb5f9669/ihh9sai/uUWmr68oc/tumblr_static_tumblr_static_cheese_205_1362800142.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def make_responses
    Question.all.each do |q|
      self.responses.create(value: 3, question_id: q.id)
    end
  end


  def self.markefy(array)
    markers = []
    array.each do |house|
      markers.push([house.title, house.latitude, house.longitude, "http://static.tumblr.com/0ee21b1cf4ad4b2057305b00cb5f9669/ihh9sai/uUWmr68oc/tumblr_static_tumblr_static_cheese_205_1362800142.jpg", house.id])
    end
    markers
  end

end
