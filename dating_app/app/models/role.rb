class Role < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :user
  before_create :switch_role

end
