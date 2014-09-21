class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Sorry, you cannot acces this page!"
    redirect_to root_url
  end
  helper_method :current_user



end
