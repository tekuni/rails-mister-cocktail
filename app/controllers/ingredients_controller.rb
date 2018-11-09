class IngredientsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])

    @ingredient = Ingredient.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])

  end

private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
