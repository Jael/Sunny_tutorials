class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name, :email, :password_digest, :role
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end  
