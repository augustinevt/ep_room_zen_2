class ResponsesController < ApplicationController

  def update

    @response = Response.find(params[:id])
    if @response.update(response_params)
      respond_to do |format|
        format.html
        format.js
      end
    else
      redirect_to :back
    end
  end

  private

  def response_params
    params.require(:response).permit(:value)
  end


end
