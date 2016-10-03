class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  after_create :create_user_profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2, :facebook]


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  has_one :user_profile
  has_one :house
  has_many :requests
  has_many :requested_houses, through: :requests, source: :house
  has_many :comments

  def create_user_profile
    up = UserProfile.create(user: self, username: self.email, first_name: 'Otsu')
  end
end
