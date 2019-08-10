class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :check_in
      t.datetime :check_out
      t.text :description

      t.timestamps
    end
  end
end
