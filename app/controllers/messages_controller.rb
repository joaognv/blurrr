class MessagesController < ApplicationController

  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!

  # the route will look like /matches/23/messages
  # /matches/:match_id/messages
  def index
    match_id = params[:match_id]
    @messages = Message.where(match_id: match_id)
    render json: @messages
    # this will look like
    # [
    #   {message: "sdhfkas", user1_id: 34},
    #   {message: "sdhfkas", user1_id: 34},
    #   {message: "sdhfkas", user1_id: 34},
    # ]
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: {success: true}
    else
      render json: {success: false}
    end
  end

  private

  def message_params
    params.require(:message).permit(:match_id, :message, :user_id)
    # very unsafe to let the user chose the user_id
    # but it would be too complicated to implement
    # the authentication right now

    # expects something like :
    # {
    #   message: {
    #     match_id: 3,
    #     user_id: 32,
    #     message: "hello darling"
    #   }
    # }
  end


end
