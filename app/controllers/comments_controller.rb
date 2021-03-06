class CommentsController < ApplicationController

  def create
    @request = Request.find(params[:request_id])
    @comment = @request.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html do
          flash[:notice] = 'your message was saved'
          redirect_to house_request_path(@request.house, @request)
        end
        format.js
      end
    else
      flash[:alert] = 'your message was not saved'
      redirect_to house_request_path(@request.house, @request)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
