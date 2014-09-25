class AddSmokerToUser < ActiveRecord::Migration
  def change
    add_column :users, :smoker, :string
  end
end
