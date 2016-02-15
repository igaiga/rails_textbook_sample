class AddAuthorToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author, :string
  end
end
