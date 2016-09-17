class HousesController < ApplicationController
  def new
    @house = House.new
  end
  def create
    @house = House.new(house_params)
    @house.user = current_user
    if @house.save
      redirect_to @house
    else
      render :new
    end
  end

  def show
    @house = House.find(params[:id])
  end


  private

  def house_params
    params.require(:house).permit(:title, :address)
  end
end