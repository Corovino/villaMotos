class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :codigo
      t.string :nombre
      t.integer :id_categoria
      t.integer :id_marca
      t.integer :precio_venta
      t.integer :precio_compra
      t.integer :cantidad
      t.boolean :estado

      t.timestamps
    end
  end
end
