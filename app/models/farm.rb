class Farm < ActiveRecord::Base
  has_one :logo, as: :imageable, class_name: 'Image'
end
