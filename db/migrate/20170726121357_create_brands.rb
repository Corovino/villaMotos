class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :codigo
      t.string :nombre
      t.text :descripcion
      t.boolean :estado

      t.timestamps
    end
  end
end
