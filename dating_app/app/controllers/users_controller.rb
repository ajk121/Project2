class UsersController < ApplicationController

  impressionist actions: [:show], unique:[:session_hash]
  helper :headshot

  def index
    @users = User.where(current_user.gender = current_user.sex_preference)
    @search = User.search(params[:q])
    @users = @search.result(distinct: true).page(params[:page])
    @cities = User.select(:city).group(:city).pluck(:city)
    @genders = User.select(:gender).group(:gender).pluck(:gender)
    @smokers = User.select(:smoker).group(:smoker).pluck(:smoker)
    @frontback = User.select(:front_backend).group(:front_backend).pluck(:front_backend)
    @favourite_languages = User.select(:favourite_language).group(:favourite_language).pluck(:favourite_language)
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    @view = View.new viewed_id:@user.id, viewer_id:current_user.id
    if @view.viewer_id.to_i != @view.viewed_id.to_i
      @view.save
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to @user
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end