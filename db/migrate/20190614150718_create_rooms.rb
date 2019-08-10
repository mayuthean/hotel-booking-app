class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.decimal :price
      t.string :room_no
      t.integer :room_type_id
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
