class MatchesController < ApplicationController

  def show
    @match_id = params[:id]  # 13
    the_match = Match.find(@match_id)

    # get the current user id
    @user_id = current_user.id

    # find the other person's user_match :

    filtered_user_matches = the_match.user_matches.select do |user_match|
      user_match.user_id != current_user.id
    end
    @other_user_match = filtered_user_matches.first
    @other_user = @other_user_match.user

    # get the list of messages to display
    @messages = the_match.messages
  end

end
