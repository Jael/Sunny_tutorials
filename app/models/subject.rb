class Subject < ActiveRecord::Base
  attr_accessible :name
  has_many :teachings
  has_many :tutor_infos, through: :teachings
  has_many :student_infos, through: :teachings
end
