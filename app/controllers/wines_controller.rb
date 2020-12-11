class WinesController < ApplicationController
  
  def home
    @wines = Wine.all
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    # binding.pry
    if @wine.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :image, :color_id, :variety_id, :country_id, :vintage, :alcohol_volume_id, :impression_id, :flavor_id, :second_flavor_id, :acidity_level_id, :tannic_level_id, :comment).merge(user_id: current_user.id)
  end

end
