class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :fruit
  attr_accessible :purchase_number
end
