class Crop < ActiveRecord::Base
  belongs_to :farm
  
  has_many :crops_users
  has_many :users, through: :crops_users

  has_many :grow_images, as: :imageable, class_name: 'Image'
end
