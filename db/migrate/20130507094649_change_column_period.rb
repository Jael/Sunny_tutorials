class ChangeColumnPeriod < ActiveRecord::Migration
  def up
    remove_column :tutor_infos, :period
    add_column :tutor_infos, :status, :boolean, default: false
    drop_table :student_infos
  end

  def down
    add_column :tutor_infos, :period, :boolean
    remove_column :tutor_infos, :status
  end
end
