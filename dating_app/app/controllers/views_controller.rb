class ViewsController < ApplicationController
  load_and_authorize_resource
  
  def user_makes_visit
    @user = current_user
    @users = Kaminari.paginate_array(@user.views_as_viewer.map(&:viewed).reverse).page(params[:page])
  end

  def user_receives_visit
    @user = current_user
    @users = Kaminari.paginate_array(@user.views_as_viewed.map(&:viewer)).page(params[:page])
  end

  def destroy
    @view = View.find(params[:id])
    @view.destroy
  end
end
