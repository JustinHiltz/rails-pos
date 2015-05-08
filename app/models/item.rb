class Item < ActiveRecord::Base
	validates :sku, :name, :description, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
