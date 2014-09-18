class User < ActiveRecord::Base
  attr_accessible :about_me, :age, :city, :email, :eyes_color, :favourite_language, :gender, :hair_color, :height, :name, :sex_preference, :smoker
end
