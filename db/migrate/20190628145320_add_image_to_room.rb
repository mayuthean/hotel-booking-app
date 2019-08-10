class AddImageToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :image, :string
  end
end
