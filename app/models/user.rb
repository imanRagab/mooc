class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # gender enum
  enum gender: { male: 0, female: 1 }

  # profile picture uploader
  mount_uploader :profile_picture, ProfilePictureUploader

  #validations
  validates :gender, :date_of_birth, presence: true

  #user associations
  has_many :courses
  has_many :comments

end
