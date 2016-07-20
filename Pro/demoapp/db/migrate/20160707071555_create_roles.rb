class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :email
      t.integer :User_id

      t.timestamps null: false
    end
  end
end
