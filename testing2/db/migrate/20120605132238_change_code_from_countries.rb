class ChangeCodeFromCountries < ActiveRecord::Migration
  def up
    change_column :countries, :code, :string
  end

  def down
    change_column :countries, :code, :text
  end
end
