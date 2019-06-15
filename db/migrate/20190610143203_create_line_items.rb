class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer :book_id
      t.integer :order_id
      t.integer :quantity
      t.float :total_price

      t.timestamps
    end
  end
end
