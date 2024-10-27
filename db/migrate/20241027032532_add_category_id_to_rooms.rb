class AddCategoryIdToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :category_id, :integer
    add_index :rooms, :category_id  # เพื่อให้การค้นหาเร็วขึ้น
  end
end
