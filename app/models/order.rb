class Order < ApplicationRecord
	validates :user_id, presence: true
	validates :name, presence: true
	validates :address, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :total_price, presence: true

	has_many :line_items
	belongs_to :user
end
