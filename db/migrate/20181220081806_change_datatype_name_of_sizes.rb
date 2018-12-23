class ChangeDatatypeNameOfSizes < ActiveRecord::Migration[5.2]
  def change
  	change_column :sizes, :name, :integer
  end
end
