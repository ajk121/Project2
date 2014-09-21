class RolesController < ApplicationController

  # GET /roles/new
  # GET /roles/new.json
  def new
    @role = Role.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role }
    end
  end

  # POST /roles
  # POST /roles.json
  def create
    @user = current_user
    if @user.role == 'basic'
      @user.role = 'premium'
    else
      @user.role = 'basic'
    end
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'You have successfully upgraded to premium. You will be now able to send and receive messages' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

end
