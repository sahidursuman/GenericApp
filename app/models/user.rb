class User < ActiveRecord::Base
  belongs_to :farm
  
  has_many :crops_users
  has_many :crops, through: :crops_users

  has_one :profile_picture, as: :imageable, class_name: 'Image'
end
