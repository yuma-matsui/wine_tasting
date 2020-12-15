class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favorite

  def create
    favorite = current_user.favorites.build(wine_id: @wine.id)
    favorite.save
  end

  def destroy
      favorite = Favorite.find_by(wine_id: @wine.id, user_id: current_user.id)
      favorite.destroy
  end

  private

  def set_favorite
    @wine = Wine.find(params[:wine_id])
  end

end
