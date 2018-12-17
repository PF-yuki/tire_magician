class AddImageIdToManufactures < ActiveRecord::Migration[5.2]
  def change
    add_column :manufactures, :image_id, :text
  end
end
