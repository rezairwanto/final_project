class AddForeignKeyToCountriesFromUsers < ActiveRecord::Migration
  def change
    add_column :countries, :user_id, :integer
  end
end
