class User < ActiveRecord::Base
  has_many :pantries
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  before_save { self.email = email.downcase }
  after_initialize { self.role ||= :standard }
  
  enum role: [:standard, :premium, :admin]
end
