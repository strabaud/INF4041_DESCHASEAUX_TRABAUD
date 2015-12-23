class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.integer :note
      t.attachment :cover
      t.integer :nbreader

      t.timestamps
    end
  end
end
