class AddRememberMeToSimplefrom < ActiveRecord::Migration
  def change
    add_column :simplefroms, :remember_me, :integer
  end
end
