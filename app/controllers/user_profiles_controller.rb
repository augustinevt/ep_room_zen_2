class UserProfilesController < ApplicationController

  def index
    @user_profiles = UserProfile.all
  end

  def new
    @user_profile = UserProfile.new
  end

  def show
    @user_profile = UserProfile.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
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


  def update
    @user_profile = current_user.user_profile
    if @user_profile.update(profile_params)
      respond_to do |format|
        format.html
        format.js
      end
    else
      flash[:alert] = "Your Profile picture could not be updated"
    end
  end

  def show_user_house
    @house = current_user.house
    respond_to do |format|
      format.html
      format.js
    end
  end



  private

  def profile_params
    params.require(:user_profile).permit(:first_name, :last_name, :username, :avatar)
  end

end
