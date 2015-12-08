class RemoveNoteFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :note, :integer
  end
end
