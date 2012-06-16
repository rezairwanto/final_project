class Category < ActiveRecord::Base
  has_many :product, :dependent => :destroy,
                    :foreign_key => "categories_id"
  has_many :child_categories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_category, :class_name => "Category"
end
