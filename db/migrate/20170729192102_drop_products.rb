class DropProducts < ActiveRecord::Migration[5.1]
  def change
    def up
      drop_table :products    
    end
  end
end
