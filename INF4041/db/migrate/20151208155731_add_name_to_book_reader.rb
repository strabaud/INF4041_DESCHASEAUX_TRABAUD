class AddNameToBookReader < ActiveRecord::Migration
  def change
    add_column :book_readers, :name, :string
  end
end
