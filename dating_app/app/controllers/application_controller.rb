class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Sorry, you cannot acces this page!"
    redirect_to root_url
  end



  protected
  def after_sign_in_path_for(resource)
    users_path
  end

end
