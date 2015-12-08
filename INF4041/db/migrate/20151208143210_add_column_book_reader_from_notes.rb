class AddColumnBookReaderFromNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :book_reader, index: true
  end
end
