class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :category_id
      t.integer :author_id

      t.timestamps
    end
  end
end
