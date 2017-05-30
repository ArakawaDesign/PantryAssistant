class Recipe < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    
    validates :title, length: { minimum: 3 }, presence: true
    validates :body, length: { minimum: 20 }, presence: true
end
