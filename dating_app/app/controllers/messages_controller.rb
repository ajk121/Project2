class MessagesController < ApplicationController
  load_and_authorize_resource

  # GET /messages
  # GET /messages.json
  def index
    messages = (current_user.messages_as_receiver + current_user.messages_as_sender)
    @views = current_user.views_as_viewed + current_user.views_as_viewer
    @messages = Kaminari.paginate_array(messages).page(params[:page])
    @message = Message.new
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end

  # GET /messages/inbox
  def inbox
    @views = current_user.views_as_viewed + current_user.views_as_viewer
    @messages = Kaminari.paginate_array(current_user.messages_as_receiver).page(params[:page])
    @message = Message.new

    render :index
  end

  # GET /messages/sent
  def sent
    @views = current_user.views_as_viewed + current_user.views_as_viewer
    @messages = Kaminari.paginate_array(current_user.messages_as_sender).page(params[:page])
    @message = Message.new
    
    render :index
  end

  # GET /messages/1/reply
  # GET /messages/1/reply.json
  def reply
    
    @original = Message.find(params[:message_id])
    authorize! :reply, @original 
    @message = Message.new

    respond_to do |format|
     format.html {render :reply} # new.html.erb
     format.json { render json: @message }
   end
 end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])
    
    if @message.receiver == current_user
      @message.status = "read"
      @message.save
    end 
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.json
  def new
    @message = Message.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/1/edit
  def edit
    @message = Message.find(params[:id])
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(params[:message])
    @message.sender = current_user
    @message.save
    redirect_to messages_path 
  end

  # PUT /messages/1
  # PUT /messages/1.json
  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
end
