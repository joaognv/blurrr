class MatchesController < ApplicationController
  def show
    match_id = params[:id]  # 13
    the_match = Match.find(match_id)
    the_match.user_matches  # this is a list of 2 UserMatch instances
    # user_match.user.profile.username

    # @user_match
    filtered_user_matches = the_match.user_matches.select do |user_match|
      user_match.user_id != current_user.id
    end
    @other_user_match = filtered_user_matches.first
  end
end
