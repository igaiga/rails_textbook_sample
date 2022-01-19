class AddAuthorToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author, :string
  end
end
