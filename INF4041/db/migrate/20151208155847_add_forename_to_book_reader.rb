class AddForenameToBookReader < ActiveRecord::Migration
  def change
    add_column :book_readers, :forename, :string
  end
end
