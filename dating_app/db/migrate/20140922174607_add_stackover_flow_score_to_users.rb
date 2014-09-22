class AddStackoverFlowScoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stackoverflow_score, :integer
  end
end
