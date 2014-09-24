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
      @user.save
      redirect_to @user, notice: 'You have successfully upgraded to premium. You will be now able read, send and receive messages'
    else
      @user.role = 'basic'
      redirect_to @user, notice: 'You have successfully downgraded your account to basic. You will not be able to read, send or receive messages anymore'
    end
end

end
