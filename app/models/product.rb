class Product < ApplicationRecord
    belongs_to :category, optional: true
    belongs_to :brand, optional: true

    validates :codigo, :nombre, :id_categoria, :id_marca, :precio_compra, :precio_venta, :cantidad, :estado, presence: true
end
