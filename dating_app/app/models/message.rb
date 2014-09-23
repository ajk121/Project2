class Message < ActiveRecord::Base
  attr_accessible :content, :receiver_id, :sender_id, :title

  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  # Create migration to add status:string to message
  # attribute accessor needs to be implemented for message.rb
  # Message default is always unread when created
  # When the person viewing the message (as the recipient) looks at it for the first time (show), the message status changes from unread to read.
  # Count the number of messages where the receiver.id is equal to the current_user.id (Inbox count)
  # Count the number of messages where the receiver.id is equal to the current_user.id and the message status is unread (Unread inbox count)

  # before_create :set_status

  # def set_status
  #   status = "unread"
  # end

end
