class StudentInfo < ActiveRecord::Base
  attr_accessible :address, :area, :demand, :fee, :gender, :grade, :phone, :status, :time, :username, :user_id, :subject_list
  validates_presence_of :address, :area, :demand, :fee, :gender, :grade, :phone, :time, :username, :subject_list
  has_many :teachings
  has_many :subjects, through: :teachings
  belongs_to :user
  default_scope order("created_at DESC")

  def subject_list=(names)
    self.subjects = names.split(",").map do |n|
      Subject.find_by_name(n)
    end
  end

  def subject_list
    subjects.map(&:name).join(',')
  end
end
