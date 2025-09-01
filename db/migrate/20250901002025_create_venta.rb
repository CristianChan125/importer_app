class CreateVenta < ActiveRecord::Migration[8.0]
  def change
    create_table :venta do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :vendedor, null: false, foreign_key: true
      t.string :descripcion_item
      t.decimal :precio_item
      t.integer :total_items

      t.timestamps
    end
  end
end
