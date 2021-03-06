class WinesController < ApplicationController
  before_action :find_wine, only: [:show, :edit, :destroy, :update]
  
  def home
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @wine.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def update
    if @wine.update(wine_params)
      render :show
    else
      render :edit
    end
  end


  private

  def wine_params
    params.require(:wine).permit(:name, :image, :color_id, :variety_id, :country_id, :vintage, :alcohol_volume_id, :impression_id, :flavor_id, :second_flavor_id, :acidity_level_id, :tannic_level_id, :comment).merge(user_id: current_user.id)
  end

  def find_wine
    @wine = Wine.find(params[:id])
  end

end
