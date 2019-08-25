class Customer < ApplicationRecord
  belongs_to :store

  has_one :customer_measurement, dependent: :destroy
  
end
