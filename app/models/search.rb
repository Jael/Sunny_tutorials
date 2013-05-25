class Search < ActiveRecord::Base
  attr_accessible :uid, :area, :subject, :gender, :search_type

  def find_tutor_infos
    tutor_infos = TutorInfo.order("created_at DESC")
    tutor_infos = tutor_infos.where(id: uid) if uid.present?
    tutor_infos = tutor_infos.where(area: area) if area.present?
    tutor_infos = tutor_infos.where(gender: gender) if gender.present?
    tutor_infos = tutor_infos.joins(:subjects).where("subjects.name = ?", subject) if subject.present?
    tutor_infos
  end

  def find_student_infos
    student_infos = StudentInfo.order("created_at DESC")
    student_infos = student_infos.where(id: uid) if uid.present?
    student_infos = student_infos.where(area: area) if area.present?
    student_infos = student_infos.where(gender: gender) if gender.present?
    student_infos = student_infos.joins(:subjects).where("subject.name = ?", subject) if subject.present?
    student_infos
  end
end
