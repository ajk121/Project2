class MessagesController < ApplicationController
  load_and_authorize_resource

  def index
    messages = (current_user.messages_as_receiver + current_user.messages_as_sender)
    @views = current_user.views_as_viewed + current_user.views_as_viewer
    @messages = Kaminari.paginate_array(messages).page(params[:page])
    @message = Message.new   
  end

  def inbox
    @views = current_user.views_as_viewed + current_user.views_as_viewer
    @messages = Kaminari.paginate_array(current_user.messages_as_receiver).page(params[:page])
    @message = Message.new
    render :index
  end


  def sent
    @views = current_user.views_as_viewed + current_user.views_as_viewer
    @messages = Kaminari.paginate_array(current_user.messages_as_sender).page(params[:page])
    @message = Message.new
    render :index
  end

  def reply
    @original = Message.find(params[:message_id])
    authorize! :reply, @original 
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
    if @message.receiver == current_user
      @message.status = "read"
      @message.save
    end 
  end

  def new
    @message = Message.new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(params[:message])
    @message.sender = current_user
    @message.save
    redirect_to messages_path 
  end

  def update
    @message = Message.find(params[:id])
    @message.update_attributes(params[:message])
    redirect_to @message
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end
end