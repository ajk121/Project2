class Message < ActiveRecord::Base
  default_scope order: 'created_at DESC'

  attr_accessible :content, :receiver_id, :sender_id, :title

  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  before_validation :set_default_status


  private 
  def set_default_status
    self.status ||= 'unread'
  end

end
