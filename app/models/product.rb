class Product < ApplicationRecord
    validates :name, :description, :price, :stock, presence: true
	validates :name, length: { minimum: 3 }
	validates :description, length: {maximum: 500}
    validates :price, :stock, numericality: true
    
    belongs_to :category
end
