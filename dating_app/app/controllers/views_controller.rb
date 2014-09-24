class ViewsController < ApplicationController
  
  def user_makes_visit
    @user = current_user
    @views = @user.views_as_viewer.page(params[:page])

  end

  def user_receives_visit
    @user = current_user
    @views = @user.views_as_viewed.page(params[:page])
  end


  def destroy
    @view = View.find(params[:id])
    @view.destroy

    respond_to do |format|
      format.html { redirect_to views_url }
      format.json { head :no_content }
    end
  end
end
