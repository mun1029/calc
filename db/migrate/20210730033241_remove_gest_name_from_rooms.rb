class RemoveGestNameFromRooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :gest_name, :string
  end
end
