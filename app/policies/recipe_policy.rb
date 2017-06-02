class RecipePolicy < ApplicationPolicy

    def index?
        true
    end
    
    def update?
        user.present?
    end

    def destroy?
        user.role == 'admin' || record.user == user
    end

    def new?
        user.present?
    end

    def create?
        user.present?
    end

    def show?
        user.present?
    end

    def edit?
        user.present?
    end
    
  class Scope
    attr_reader :user, :scope
    
    def initialize(user, scope)
      @user = user
      @scope = scope
    end
    
    def resolve
      recipes = []
      if user
        if user.role == 'admin'
          recipes = scope.all
          puts scope.all
        elsif user.role == 'premium'
          all_recipes = scope.all
          all_recipes.each do |recipe|
            ##if !recipe.private? || recipe.user == user || recipe.users.include?(user)
              recipes << recipe # if the user is premium, only show them public wikis, or that private wikis they created, or private wikis they are a collaborator on
            ##end
          end
        else # this is the lowly standard user
          all_recipes = scope.all
          recipes = []
          all_recipes.each do |recipe|
            ##if !recipe.private? || recipe.users.include?(user)
              recipes << recipe # only show standard users public wikis and private wikis they are a collaborator on
            ##end
          end
        end
      else
        public_recipes = scope.all
        recipes = []
        public_recipes.each do |recipe|
          recipes << recipe
        end
      end
      recipes # return the wikis array we've built up
    end
  end
end