class AddImageToRoomType < ActiveRecord::Migration[5.1]
  def change
    add_column :room_types, :image, :string
  end
end
