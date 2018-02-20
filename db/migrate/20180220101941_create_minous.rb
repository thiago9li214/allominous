class CreateMinous < ActiveRecord::Migration[5.1]
  def change
    create_table :minous do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :size
      t.string :specie
      t.integer :age
      t.string :personality
      t.text :description
      t.integer :daily_price

      t.timestamps
    end
  end
end
