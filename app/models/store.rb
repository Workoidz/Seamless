class Store < ApplicationRecord

	has_many :employees, dependent: :destroy
	has_many :customers, dependent: :destroy
	has_many :orders, through: :customers, source: :orders

end
