class Brand < ApplicationRecord
    has_many :product
    validates :nombre,:codigo,  presence: true,  length: { minimum: 3 }, uniqueness: true
end
