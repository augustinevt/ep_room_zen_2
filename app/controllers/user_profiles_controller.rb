class UserProfilesController < ApplicationController

  def index
    @user_profiles = UserProfile.all
  end

  def new
    @user_profile = UserProfile.new
  end

  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def create
    @user_profile = UserProfile.new(profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      redirect_to @user_profile
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:user_profile).permit(:first_name, :last_name, :username, :avatar)
  end

end
