class RemovePhotoFromManufacture < ActiveRecord::Migration[5.2]
  def change
    remove_column :manufactures, :photo_file_name, :string
    remove_column :manufactures, :photo_content_type, :string
    remove_column :manufactures, :photo_updated_at, :datetime
    remove_column :manufactures, :photo_file_size, :bigint
  end
end
