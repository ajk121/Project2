class RemoveSmokerFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :smoker
  end

  def down
    add_column :users, :smoker, :boolean
  end
end
