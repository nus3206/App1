class AddEoleIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integere
  end
end
