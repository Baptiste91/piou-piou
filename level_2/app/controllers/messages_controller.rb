class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @message = Message.new
    @messages = Message.order(created_at: :desc)
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save!
      redirect_to message_path(@message)
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :tag_id)
  end
end
