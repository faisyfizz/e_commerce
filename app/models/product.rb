class Product < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :comments 
end
