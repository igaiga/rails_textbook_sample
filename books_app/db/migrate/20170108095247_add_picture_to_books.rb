class AddPictureToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :picture, :string
  end
end
