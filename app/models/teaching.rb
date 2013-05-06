class Teaching < ActiveRecord::Base
  belongs_to :tutor_info
  belongs_to :subject
  belongs_to :student_info
end
