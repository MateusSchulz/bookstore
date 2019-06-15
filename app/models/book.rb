class Book < ApplicationRecord
	belongs_to :category
	belongs_to :author
	validates :name, presence: true
	validates :description, presence: true
	validates :price, presence: true
end
