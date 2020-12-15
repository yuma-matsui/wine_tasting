class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favorite

  def create
    favorite = current_user.favorites.build(wine_id: params[:wine_id])
    favorite.save
    redirect_to wine_path(@wine)
  end

  def destroy
      favorite = Favorite.find_by(wine_id: params[:wine_id], user_id: current_user.id)
      favorite.destroy
      redirect_to wine_path(@wine)
  end

  private

  def set_favorite
    @wine = Wine.find(params[:wine_id])
  end

end
