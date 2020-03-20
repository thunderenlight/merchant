class Address < ApplicationRecord
	validates :line1, presence: true 
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, length: {is: 5}, presence: true

	has_many :orders
	belongs_to :user
end
