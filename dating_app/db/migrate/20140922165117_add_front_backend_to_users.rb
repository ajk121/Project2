class AddFrontBackendToUsers < ActiveRecord::Migration
  def change
    add_column :users, :front_backend, :string
  end
end
