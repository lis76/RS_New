class PhotosController < ApplicationController
  before_action :set_photo, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :owner, only: %i[edit update destroy]

  def index
    @photos = Photo.all.order('created_at DESC').paginate(page: params[:page], per_page: 2)
  end

  def show; end

  def new
    @photo = current_user.photos.build
  end

  def edit; end

  def create
    @photo = current_user.photos.build(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to photo_url(@photo), notice: 'Photo was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }      end
    end
  end

  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to photo_url(@photo), notice: 'Photo was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
    end
  end

  private

  def authenticate_user!; end

  def owner; end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:description, :image)
  end
end
