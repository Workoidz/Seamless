class Order < ApplicationRecord
  belongs_to :customer

  has_one :order_measurement, dependent: :destroy
  has_many :shirt_styles, dependent: :destroy
  has_many :trouser_styles, dependent: :destroy

end
