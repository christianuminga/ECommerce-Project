class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :description
      t.decimal :price
      t.integer :stock
      t.int :category_id

      t.timestamps
    end
  end
end
