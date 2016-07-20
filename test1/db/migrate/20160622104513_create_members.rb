class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.date :bdd
      t.integer :mail
      t.string :er
      
      t.timestamps null: false
    end
  end
end
