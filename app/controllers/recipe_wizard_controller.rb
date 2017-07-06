class RecipeWizardController < ApplicationController
    include Wicked::Wizard
    
    steps :create_title, :add_ingredients, :add_directions
    
    def show
        @user = current_user
        render_wizard
    end
end
