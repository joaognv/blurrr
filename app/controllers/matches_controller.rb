class MatchesController < ApplicationController

  def new
    # 1. try to find a match
    # 1.a go through all other users
    # 1.b apply the filtering rules :
    #.     - same city ?
    #.     - gender matches current user's pref' ?
    other_users = User.where.not(id: current_user.id).select {|u| (u.profile.city == current_user.profile.city) &&  (u.profile.gender == current_user.profile.preference)}

    new_matches_only = other_users.select {|a| current_user.matches.map{|m| m.users}.flatten.include?(a) ? false : a }
    @match = Match.new
    @match.users << current_user << new_matches_only.first
    @match.save!
      # 1.c check if the match already exists
      #.    - go through all current_user's matches
      # already_exists = false
      # current_user.matches.each do |current_match|
      #   if current_match.users.where(id: ou.id).first
      #     already_exists = true
      #     matches << current_match
      #   end
      # end

      # if !already_exists
      #   # create the match
      #   new_match = Match.new(users: [current_user, ou])
      #   new_match.save!
      #   matches << new_match
      # end

      # @match = matches.last || true
  end



    # if there is one create the match in the database
    # and display a link to it in the view
    # if not, display "sorry come back later"

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

  def delete
  end

end
