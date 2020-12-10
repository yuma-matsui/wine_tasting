class WinesController < ApplicationController

  def home
  end

  def new
    @wine = Wine.new
  end
  
end
