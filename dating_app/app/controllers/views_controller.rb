class ViewsController < ApplicationController
  
  # I'm looking at someone else
  def user_makes_visit
    @user = current_user
    @users = Kaminari.paginate_array(@user.views_as_viewer.map(&:viewed).reverse).page(params[:page])
  end

  # People looking at me
  def user_receives_visit
    @user = current_user
    @users = Kaminari.paginate_array(@user.views_as_viewed.map(&:viewer)).page(params[:page])
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
