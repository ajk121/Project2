class AddFrontBackendFromUsers < ActiveRecord::Migration
  def change
    add_column :users, :front_backend, :boolean
  end
end
