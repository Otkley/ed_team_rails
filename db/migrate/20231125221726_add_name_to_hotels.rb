class AddNameToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :name, :string
  end
end
