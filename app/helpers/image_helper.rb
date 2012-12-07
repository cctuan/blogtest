module ImageHelper
  def imageAll
    @allimages = current_user.images 
  end

  def imageShow
    @singleimage = Image.find(params[:id])
  end

  def imageNew
    @image = Image.new(:user_id => current_user.id)
  end

  def imageCreate
    puts "______________in helper"
    @image = Image.new(params[:image])
    if @image.save
      redirect_to @image
    else
      redirect_to images_path
    end
  end

  def imageEdit
    @editimage = Image.find(params[:id])
  end

  def imageUpdate
    @updateimage = Image.find(params[:id])
    if @updateimage.update_attributes(params[:image])
      redirect_to @updateimage
    end
  end

end
