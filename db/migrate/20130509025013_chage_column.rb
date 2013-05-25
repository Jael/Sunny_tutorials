class ChageColumn < ActiveRecord::Migration
  def up
    rename_column :searches, :tutor_id, :uid
  end

  def down
    rename_column :searches, :uid, :tutor_id
  end
end
