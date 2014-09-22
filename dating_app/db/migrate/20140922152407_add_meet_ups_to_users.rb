class AddMeetUpsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :meet_ups, :string
  end
end
