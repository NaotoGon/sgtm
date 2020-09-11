class MessagesController < ApplicationController

  def index
    @room = Room.find(params[:room_id])
    @message = Message.new
    @messages = Message.all.order(created_at: "ASC")
  end

  def create
    @messages = Message.all.order(created_at: "ASC")
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room.id)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :voice, :sgtm).merge(user_id: current_user.id)
  end
end