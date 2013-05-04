class TutorInfo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :gender, :username, :date_of_birth, :major, :school, :identity, :area, :address, :phone, :qq,
                  :fee, :time, :experience, :period, :subject_list 
  has_many :teachings
  has_many :subjects, through: :teachings

  def subject_list=(names)
    self.subjects = names.split(",").map do |n|
      Subject.find_by_name(n)
    end
  end

  def subject_list
    subjects.map(&:name).join(',')
  end
end
