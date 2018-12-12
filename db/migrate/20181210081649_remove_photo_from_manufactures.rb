class RemovePhotoFromManufactures < ActiveRecord::Migration[5.2]
  def change
    remove_column :manufactures, :photo, :text
  end
end
