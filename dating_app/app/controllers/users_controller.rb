class UsersController < ApplicationController

  impressionist actions: [:show], unique:[:session_hash]
  helper :headshot

  # GET /users
  # GET /users.json
  def index
    # @users = User.all
    @search = User.search(params[:q])
    @users = @search.result(distinct: true).page(params[:page])
    @cities = User.select(:city).group(:city).pluck(:city)
    @genders = User.select(:gender).group(:gender).pluck(:gender)
    @smokers = User.select(:smoker).group(:smoker).pluck(:smoker)
    @frontback = User.select(:front_backend).group(:front_backend).pluck(:front_backend)
    @favourite_languages = User.select(:favourite_language).group(:favourite_language).pluck(:favourite_language)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end


  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @view = View.new viewed_id:@user.id, viewer_id:current_user.id
    if @view.viewer_id.to_i != @view.viewed_id.to_i
      @view.save
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
      @user.save
      # if @user.image == 'nil'   
      #  @user.image = "http://brandonmathis.com/projects/fancy-avatars/demo/images/avatar_male_dark_on_clear_200x200.png"
        redirect_to @user
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'You have successfully updated your profile' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
  end
end
end