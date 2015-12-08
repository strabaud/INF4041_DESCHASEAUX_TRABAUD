class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :value
      t.references :book, index: true

      t.timestamps
    end
  end
end
