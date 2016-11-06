class RequestsController < ApplicationController



  def new
    @house = House.find(params[:house_id])
    @request = Request.new
  end

  def create
    @house = House.find(params[:house_id])
    if @house != current_user.house
      @request = @house.requests.new(request_params)
      @request.user = current_user
      if @request.save
        respond_to do |format|
          format.js
          format.html {redirect_to house_request_path(@house, @request)}
        end
      else
        render :new
      end
    end
  end

  def show
    @request = Request.find(params[:id])
    @type = params[:type]
    respond_to do |format|
      format.html
      format.js
    end
  end


  private

  def request_params
    params.require(:request).permit(:message)
  end
end
