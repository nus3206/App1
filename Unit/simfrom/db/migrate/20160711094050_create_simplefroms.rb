class CreateSimplefroms < ActiveRecord::Migration
  def change
    create_table :simplefroms do |t|
      t.string :name
      t.string :email
      t.integer :year

      t.timestamps null: false
    end
  end
end
