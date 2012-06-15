class Categories < ActiveRecord::Base
  has_many :product, :through => :categories_product
  has_many :categories_product
end
