class CreateStudentInfos < ActiveRecord::Migration
  def change
    create_table :student_infos do |t|
      t.belongs_to :user
      t.string :gender
      t.string :username
      t.string :phone
      t.string :grade
      t.string :subject
      t.string :time
      t.string :area
      t.string :address
      t.string :fee
      t.text :demand
      t.boolean :status

      t.timestamps
    end
    add_index :student_infos, :user_id
  end
end
