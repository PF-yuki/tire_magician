class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :name
      t.integer :price
      t.integer :manufacture_id

      t.timestamps
    end
  end
end
