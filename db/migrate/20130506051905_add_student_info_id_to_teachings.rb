class AddStudentInfoIdToTeachings < ActiveRecord::Migration
  def change
    add_column :teachings, :student_info_id, :integer
    remove_column :student_infos, :subject, :string
  end
end
