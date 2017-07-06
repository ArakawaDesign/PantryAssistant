class Pantry < ActiveRecord::Base
    belongs_to :user
    
    validates :quantity, numericality: { only_integer: true }
end
