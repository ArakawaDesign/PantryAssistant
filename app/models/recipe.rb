class Recipe < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    
    validates :title, length: { minimum: 3 }, presence: true
    validates :body, length: { minimum: 20 }, presence: true
    validates :quantity, numericality: { only_integer: true }, presence: true
    validates :ingredients, presence: true
    validates :servings, presence: true, numericality: { only_integer: true}
end
