class AddPictureToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :picture, :string
  end
end
