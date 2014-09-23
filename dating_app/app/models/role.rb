class Role < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :user
  before_create :switch_role

  # def set_role
  #   current_user.role = current_user.user.role == 'basic' ? 'premium' : 'basic'
  # end

end
