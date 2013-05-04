class TutorInfo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :gender, :username, :date_of_birth, :major, :school, :identity, :area, :address, :phone, :qq,
                  :fee, :time, :experience, :period, :subject_list, :subjects
  has_many :teachings
  has_many :subjects, through: :teachings
end
