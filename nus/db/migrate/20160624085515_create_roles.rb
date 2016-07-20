class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :desc
      t.integer :level

      t.timestamps null: false
    end
  end
end
