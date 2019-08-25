class Order < ApplicationRecord
  belongs_to :customer

  has_one :order_measurement, dependent: :destroy

end
