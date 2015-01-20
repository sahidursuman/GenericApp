class CropsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :crop
end
