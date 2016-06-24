class User < ActiveRecord::Base

  mount_uploader :profile_photo, ProfilePhotoUploader

  paginates_per 20

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  enum role: [ :unlogged, :student, :teacher ]
end
