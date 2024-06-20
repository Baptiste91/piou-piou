require_relative "../../../level_1/traduction"

class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @message = Message.new
    @messages = Message.order(created_at: :desc)
  end

  def show
    @message = Message.find(params[:id])
    @translated_message = encode(@message.content)
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

  def messages
    @tag_name = params[:name]
    @messages = Message.joins(:tag).where(tags: { name: params[:name].downcase }).order(created_at: :desc)
  end

  private

  def message_params
    params.require(:message).permit(:content, :tag_id)
  end
end
