class AddPhotoToMinous < ActiveRecord::Migration[5.1]
  def change
    add_column :minous, :photo, :string
  end
end
