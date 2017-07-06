class Comment < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :user
  
  validates :body, length: { minimum: 3 }, presence: true
  validates :user, presence: true
end
