class Product < ActiveRecord::Base
  belongs_to :user

  has_many :categories, :through => :categories_product
  has_many :categories_product
  
  scope :is_above, where("price > '1000'")
end
