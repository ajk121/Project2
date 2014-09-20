class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  attr_accessible :about_me, :age, :city, :eyes_color, :favourite_language, :gender, :hair_color, :height, :name, :sex_preference, :smoker

has_many :views_as_viewer, class_name:'Game', foreign_key: 'viewer_id'
has_many :views_as_viewed, class_name:'Game', foreign_key: 'viewed_id'

has_many :messages_as_sender, class_name:'Game', foreign_key: 'sender_id'
has_many :messages_as_receiver, class_name:'Game', foreign_key: 'receiver_id'
 
end
