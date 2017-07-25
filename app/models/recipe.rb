class Recipe < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    acts_as_taggable_on :ingredients
    validates :title, length: { minimum: 3 }, presence: true
    validates :body, length: { minimum: 5 }, presence: true
    validates :quantity, numericality: { only_integer: true }, presence: true
    # validates :ingredients, presence: true
    validates :servings, presence: true, numericality: { only_integer: true}
end