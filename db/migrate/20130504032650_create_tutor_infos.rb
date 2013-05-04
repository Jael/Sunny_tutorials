class CreateTutorInfos < ActiveRecord::Migration
  def up
    create_table :tutor_infos do |t|
      t.integer :user_id
      #base
      t.string :gender
      t.string :username
      t.date :date_of_birth
      t.string :major
      t.string :school
      t.string :identity
      t.string :area
     #Contact 
      t.string  :address
      t.integer :phone
      t.integer :qq
      #detail
      t.string :fee
      t.string :time
      t.text :experience
      t.boolean :period   #period of validity

      t.timestamps
    end
  end

  def down
    drop_table :tutor_infos
  end
end
