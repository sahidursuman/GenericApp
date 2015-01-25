class Farm < ActiveRecord::Base
  has_one :logo, as: :imageable, class_name: 'Image'

  def to_s
    self.name
  end
end
