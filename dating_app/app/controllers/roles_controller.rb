class RolesController < ApplicationController

  def new
    @role = Role.new
  end


  def create
    @user = current_user
    if @user.role == 'basic'
      @user.role = 'premium'
      @user.save
      redirect_to @user, notice: 'You have successfully upgraded to premium. You will be now able read, send and receive messages'
    else
      @user.role = 'basic'
      @user.save
      redirect_to @user, notice: 'You have successfully downgraded your account to basic. You will not be able to read, send or receive messages anymore'
    end
  end
end
