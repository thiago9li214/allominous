class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :minou, foreign_key: true
      t.integer :rental_price
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
