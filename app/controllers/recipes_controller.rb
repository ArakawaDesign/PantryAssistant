class RecipesController < ApplicationController
  def index
    #@recipes = policy_scope(Recipe)
    @recipes = if params[:search]
      Recipe.where('title LIKE ?',  "%#{params[:search]}%")
    else
      Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    @recipe.title = params[:recipe][:title]
    @recipe.body = params[:recipe][:body]
    @recipe.quantity = params[:recipe][:quantity]
    @recipe.servings = params[:recipe][:servings]
    
    if @recipe.save
      flash[:notice] = "Recipe was saved."
      redirect_to @recipe
    else
      flash.now[:alert] = "There was an error saving recipe. Please try again."
      render :new
    end
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.title = params[:recipe][:title]
    @recipe.body = params[:recipe][:body]
    @recipe.quantity = params[:recipe][:quantity]
    @recipe.servings = params[:recipe][:servings]
 
    if @recipe.save
      flash[:notice] = "Recipe was updated."
      redirect_to @recipe
    else
      flash.now[:alert] = "There was an error saving recipe. Please try again."
      render :edit
    end
  end
  
  def destroy
    @recipe = Recipe.find(params[:id])
    
    if @recipe.destroy
      flash[:notice] = "\"#{@recipe.title}\" was deleted successfully."
      redirect_to recipes_path
    else
      flash.now[:alert] = "There was an error deleting recipe."
      render :show
    end
  end
  
  def recipe_params
    params.require(:recipe).permit(:title)
  end
end
