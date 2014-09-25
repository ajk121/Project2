class User < ActiveRecord::Base

  is_impressionable :counter_cache => true

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  mount_uploader :image, UserImageUploader

  attr_accessible :email, :password, :password_confirmation, :remember_me, :image, :role, :about_me, :age, :city, :eyes_color, :favourite_language, :gender, :hair_color, :height, :name, :sex_preference, :smoker, :image, :username, :impressions_count, :status,:meet_ups,:front_backend, :stackoverflow_score, :github_id

  has_many :views_as_viewer, class_name:'View', foreign_key: :viewer_id, dependent: :destroy
  has_many :views_as_viewed, class_name:'View', foreign_key: :viewed_id, dependent: :destroy

  has_many :viewed_users, through: :views_as_viewer, source: :viewed 

  has_many :messages_as_sender, class_name:'Message', foreign_key: :sender_id, dependent: :destroy
  has_many :messages_as_receiver, class_name:'Message', foreign_key: :receiver_id,dependent: :destroy

  has_many :roles

  validates :name, presence: true, on: :update, length: { minimum: 2 }
  validates :about_me, presence: true, on: :update, length: { minimum: 12 }
  validates :age, presence: true, on: :update, numericality: { only_integer: true }, inclusion: {in: 18..100}
  validates :gender, inclusion: ["Male", "Female"], on: :update
  validates :sex_preference, presence: true, on: :update
  validates :city, presence: true, on: :update
  validates :height, presence: true, on: :update, numericality: true, inclusion: {in: 0..300}
  validates :smoker, inclusion: ["Smoker", "Non Smoker"], on: :update
  validates :favourite_language, presence: true, on: :update
  validates :front_backend, inclusion: ["Back-End", "Front-End"], on: :update
  validates :stackoverflow_score, presence: true, on: :update, :numericality => { :greater_than_or_equal_to => 0 }

  before_create :set_initial_role

  def self.get_all_user_except(user_id)
    where("users.id != ?", user_id) 
  end 

  def self.from_omniauth(auth)
    if user = User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user
    else
      where(auth.slice(:provider, :uid)).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
    end
  end

  private
  def set_initial_role
    self.role ||= "incomplete"
  end

end
