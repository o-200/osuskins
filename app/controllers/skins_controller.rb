class SkinsController < ApplicationController
  # before_action :authenticate_user!  

  def new
    @skins = Skin.new
  end

  def show
    @skins = Skin.find params[:id]
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

  def index
    @skins = Skin.all
  end
  


  private
  def skins_params
    params.require(:skin).permit(:photo, :name, :description)
  end
end