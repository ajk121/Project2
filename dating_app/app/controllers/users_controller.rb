class UsersController < ApplicationController
  
  impressionist actions: [:show], unique: [:session_hash]

  # GET /users
  # GET /users.json
  def index
    # @users = User.all
    @search = User.search(params[:q])
    @users = @search.result
    @search.build_condition
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

def advanced_search
  @search = User.search(params[:q])
  @users = @search.result
  @search.build_condition
end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = current_user
    @messages = @user.messages_as_receiver + @user.messages_as_sender
    @views = @user.views_as_viewed + @user.views_as_viewer

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
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

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
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
