class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_image

  mount_uploader :user_image, UserImageUploader

  attr_accessible :about_me, :age, :city, :eyes_color, :favourite_language, :gender, :hair_color, :height, :name, :sex_preference, :smoker, :image, :username

  has_many :views_as_viewer, class_name:'View', foreign_key: :viewer_id, dependent: :destroy
  has_many :views_as_viewed, class_name:'View', foreign_key: :viewed_id, dependent: :destroy

  has_many :messages_as_sender, class_name:'Message', foreign_key: :sender_id, dependent: :destroy
  has_many :messages_as_receiver, class_name:'Message', foreign_key: :receiver_id,dependent: :destroy
  
end
