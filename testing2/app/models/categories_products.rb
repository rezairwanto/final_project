class CategoriesProduct < ActiveRecord::Base
    belongs_to :product
    belongs_to :categories
end
