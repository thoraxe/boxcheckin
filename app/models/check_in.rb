class CheckIn < ActiveRecord::Base

  belongs_to :box
  belongs_to :box_class
  belongs_to :member

end
