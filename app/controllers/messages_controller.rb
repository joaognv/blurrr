class MessagesController < ApplicationController

  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!

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
