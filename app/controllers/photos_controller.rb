# frozen_string_literal: true

class PhotosController < ApplicationController
  before_action :set_photo, only: %i[show edit update destroy]

  def index
    @photos = Photo.all
  end

  def show; end

  def new
    @photo = Photo.new
  end

  def edit; end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to photo_url(@photo), notice: 'Фотография была успешно создана.'
    else
      render :new
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to photo_url(@photo), notice: 'Фотография была успешно обновлена.'
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_url, notice: 'Фотография была успешно удалена.'
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:description)
  end
end
