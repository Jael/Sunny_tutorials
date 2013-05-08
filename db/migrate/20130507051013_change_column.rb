class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :tutor_infos, :phone, :string
    change_column :tutor_infos, :qq, :string
  end

  def down
    change_column :tutor_infos, :phone, :integer
    change_column :tutor_infos, :qq, :integer
  end
end
