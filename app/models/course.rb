class Course < ActiveRecord::Base
  has_one :teacher
  has_many :student
  attr_accessible :name
end
