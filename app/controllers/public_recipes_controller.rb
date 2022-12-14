class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.where(public: true).includes(%i[user recipe_foods]).order(created_at: :desc)
  end
end
