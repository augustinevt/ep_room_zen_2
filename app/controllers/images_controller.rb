class ImagesController < ApplicationController

  def create
    @imageable = find_commentable
    @image = @imageable.images.new(image_params)
    if @image.save
      flash[:notice] = 'image was saved'
    else
      flash[:alert] = 'image was not saved'
    end
      redirect_to @imageable
  end

  private

  def image_params
    params.require(:image).permit(:body, :caption)
  end

  # found at http://stackoverflow.com/questions/23088709/finding-parent-in-rails-polymorphic-association
  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
  end


end
