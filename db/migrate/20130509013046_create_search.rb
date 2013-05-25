class CreateSearch < ActiveRecord::Migration
  def up
    create_table :searches do |t|
      t.integer :tutor_id
      t.string :area
      t.string :subject
      t.string :gender

      t.timestamps
    end
  end

  def down
    drop_table :searches 
  end
end
