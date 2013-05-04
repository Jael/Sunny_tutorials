class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.belongs_to :tutor_info
      t.belongs_to :subject

      t.timestamps
    end
    add_index :teachings, :tutor_info_id
    add_index :teachings, :subject_id
  end
end
