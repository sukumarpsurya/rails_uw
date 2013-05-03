class Student < ActiveRecord::Base
  has_many :teachers, through: :course
  has_and_belongs_to_many :courses
  attr_accessible :name
end
