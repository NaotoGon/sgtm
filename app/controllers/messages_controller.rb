class MessagesController < ApplicationController

  def index
    @room = Room.find(params[:room_id])
    @message = Message.new
    @messages = Message.where(room_id: @room.id)
  end

  def create
    @room = Room.find(params[:room_id])
    @message = Message.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room.id)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :voice).merge(user_id: current_user.id)
  end
end