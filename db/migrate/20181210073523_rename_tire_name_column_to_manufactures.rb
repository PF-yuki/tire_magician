class RenameTireNameColumnToManufactures < ActiveRecord::Migration[5.2]
  def change
  	rename_column :manufactures, :tire_name, :tire_maker
  end
end
