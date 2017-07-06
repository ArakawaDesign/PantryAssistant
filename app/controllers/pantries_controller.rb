class PantriesController < ApplicationController
  def index
    if user_signed_in?
      @pantries = Pantry.where(:user_id => current_user.id)
    end
  end

  def new
    @pantry = current_user.pantries.build
  end
  
  def show
    @pantry = Pantry.find(params[:id])
  end
  
  def edit
    @pantry = Pantry.find(params[:id])
  end
  
  def create
    @pantry = current_user.pantries.build(params.require(:pantry).permit(:ingredient, :description, :quantity))
    if @pantry.save
      flash[:notice] = "Ingredient was saved."
      redirect_to pantries_path
    else
      flash.now[:alert] = "There was an error saving ingredient. Please try again."
      render 'new'
    end
  end

  def edit
    @pantry = Pantry.find(params[:id])
  end
  
  def update
    @pantry = Pantry.find(params[:id])
    @pantry.ingredient = params[:pantry][:ingredient]
    @pantry.description = params[:pantry][:description]
    @pantry.quantity = params[:pantry][:quantity]
 
    if @pantry.save
      flash[:notice] = "Ingredient was updated."
      redirect_to pantries_path
    else
      flash.now[:alert] = "There was an error saving ingredient. Please try again."
      render :edit
    end
  end
  
  def destroy
    @pantry = Pantry.find(params[:id])
    
    if @pantry.destroy
      flash[:notice] = "\"#{@pantry.ingredient}\" was deleted successfully."
      redirect_to pantries_path
    else
      flash.now[:alert] = "There was an error deleting ingredient."
      render :show
    end
  end
end
