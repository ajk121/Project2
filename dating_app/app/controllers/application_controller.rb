class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Sorry, you cannot acces this page!"
    redirect_to root_url
  end

  protected
  def after_sign_in_path_for(resource)
    if resource.sign_in_count == 1
      edit_user_path(resource)
    else
      users_path
    end
  end

end
