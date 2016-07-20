class AddRoleIdToSimplefrom < ActiveRecord::Migration
  def change
    add_column :simplefroms, :role_id, :integer
  end
end
