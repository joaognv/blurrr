class ProfilesController < ApplicationController

  def show
    @profile = Profile.find(params[:id])
  end

  def new
   @profile = Profile.new
  end

  def edit
    @profile = current_user.profile
  end

  def update
    profile = Profile.find(params[:id])
    if profile.update(profile_params)
      redirect_to dashboard_path
    else
      flash[:alert] = profile.errors.full_messages.join(". ")
      redirect_to edit_profile_path(current_user.profile)
    end
  end

  def create
     @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to questions_path
    else
      flash[:alert] = @profile.errors.full_messages
      render new_profile_path
    end
  end


  private
  def profile_params #do i need user_id?
    params.require(:profile).permit(:username, :city, :age, :preference, :gender, :chakra_colour, :photo, :nerdy, :sporty, :party, :organized, :spiritual)
  end
end
