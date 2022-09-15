class SkinsController < ApplicationController
  # before_action :authenticate_user!  

  def new
    @skins = Skin.new
  end
  
  def edit
    @skins = Skin.find(params[:id])
  end

  def update
    @skins = Skin.find(params[:id])

    if @skins.update(skins_params)
      redirect_to @skins
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @skins = Skin.new(skins_params)
    @skins.user = current_user
    if @skins.save
      redirect_to skins_path
    else
      render :new
    end
  end

  def show
    @skins = Skin.find params[:id]
  end

  def index
    @skins = Skin.all
  end

  def destroy
    @skins = Skin.find(params[:id])
    @skins.destroy

    redirect_to skins_path
  end

  private

  def skins_params
    params.require(:skin).permit(:photo, :file, :name, :description)
  end
end