class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products do |t|
      t.integer :product_id
      t.integer :categories_id
      t.timestamps
    end
  end
end
