class StudentInfo < ActiveRecord::Base
  attr_accessible :address, :area, :demand, :fee, :gender, :grade, :phone, :status, :time, :username, :user_id
  validates_presence_of :address, :area, :demand, :fee, :gender, :grade, :phone, :time, :username
  has_many :teachings
  has_many :subjects, through: :teachings
  belongs_to :user
end
