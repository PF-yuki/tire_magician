class RenameTireMakerColumnToManufactures < ActiveRecord::Migration[5.2]
  def change
  	rename_column :manufactures, :tire_maker, :tire_maker_id
  end
end
