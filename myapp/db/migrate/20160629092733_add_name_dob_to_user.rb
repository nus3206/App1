class AddNameDobToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :dtring
    add_column :users, :dob, :date
  end
end
