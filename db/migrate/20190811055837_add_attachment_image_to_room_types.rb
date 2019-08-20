class AddAttachmentImageToRoomTypes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :room_types do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :room_types, :image
  end
end
