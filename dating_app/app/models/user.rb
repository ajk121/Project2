class User < ActiveRecord::Base
  attr_accessible :about_me, :age, :city, :email, :eyes_color, :favourite_language, :gender, :hair_color, :height, :name, :sex_preference, :smoker

has_many :views_as_viewer, class_name:'Game', foreign_key: 'viewer_id'
has_many :views_as_viewed, class_name:'Game', foreign_key: 'viewed_id'

has_many :messages_as_sender, class_name:'Game', foreign_key: 'sender_id'
has_many :messages_as_receiver, class_name:'Game', foreign_key: 'receiver_id'
 
end
