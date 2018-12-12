class AddAttachmentPhotoToManufactures < ActiveRecord::Migration[5.2]
  def self.up
    change_table :manufactures do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :manufactures, :photo
  end
end
