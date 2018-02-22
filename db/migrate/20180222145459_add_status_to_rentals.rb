class AddStatusToRentals < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :status, :string, default: "free"
  end
end
