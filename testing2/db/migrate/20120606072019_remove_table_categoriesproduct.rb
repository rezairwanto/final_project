class RemoveTableCategoriesproduct < ActiveRecord::Migration
  def change
    drop_table :categoriesproduct
  end
end
