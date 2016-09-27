class ImagesController < ApplicationController

  def new
    @imageable = find_imageable
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @imageable = find_imageable
    @image = @imageable.images.new(image_params)
    if @image.save
      respond_to do |format|
        format.html {flash[:notice] = 'image was saved'; redirect_to @imageable}
        format.js
      end
    else
      flash[:alert] = 'image not saved'
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:body, :caption)
  end

  # found at http://stackoverflow.com/questions/23088709/finding-parent-in-rails-polymorphic-association
  def find_imageable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
  end


end
