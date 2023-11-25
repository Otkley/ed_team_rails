class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.integer :total_rooms
      t.string :address

      t.timestamps
    end
  end
end
