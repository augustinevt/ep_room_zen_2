class CompatibilitiesController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @compatibility = @question.compatibilities.new(compatibility_params)
    @compatibility.user_profile = current_user.user_profile
    if @compatibility.save
      flash[:notice] = 'compatibility saved'
    else
      flash[:alert] = 'compatibility not saved'
    end
    redirect_to current_user.user_profile
  end

  def update
    @compatibility = Compatibility.find(params[:id])
    if @compatibility.update(compatibility_params)
      flash[:notice] = 'compatibility updated'
    else
      flash[:alert] = 'compatibility not updated'
    end
    redirect_to current_user.user_profile
  end

  private

  def compatibility_params
    params.require(:compatibility).permit(:response)
  end


end
