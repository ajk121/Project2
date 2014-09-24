class RemoveFrontBackendFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :front_backend
  end

  def down
    add_column :users, :front_backend, :string
  end
end
