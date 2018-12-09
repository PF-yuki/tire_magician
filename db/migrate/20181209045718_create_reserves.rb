class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.date :day
      t.time :time
      t.string :car_maker
      t.string :car_model
      t.integer :user_id
      t.integer :size_id

      t.timestamps
    end
  end
end
