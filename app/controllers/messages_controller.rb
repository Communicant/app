class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  def index
    @messages = Message.all
    respond_to do |format|
      format.html
      format.json { @messages = @messages.map { |m| m.as_json.merge(name: User.find(m.user_id).first_name)}
       render json: @messages }
     end
  end

  # GET /messages/1
  def show
    @message.as_json.merge(name: User.find(params[:user_id]).first_name)
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  def create
    # @parent = Parent.find_by(params[:id])
    @message = Message.new(user_id: 1, date: Date.today, time: Time.now, body: (params[:message][:body]))

    if @message.save
      redirect_to @message, notice: 'Message was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      redirect_to @message, notice: 'Message was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
    redirect_to messages_url, notice: 'Message was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_params
      params.require(:message).permit(:user_id, :body, :date, :time)
    end
end
