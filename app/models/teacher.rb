class Teacher < ActiveRecord::Base
  has_many :students, through: :course
  has_and_belongs_to_many :courses
  attr_accessible :name
end
