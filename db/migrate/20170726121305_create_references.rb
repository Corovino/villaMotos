class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.string :codigo
      t.string :nombre
      t.text :descripcion
      t.boolean :estado

      t.timestamps
    end
  end
end
