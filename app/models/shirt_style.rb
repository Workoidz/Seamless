class ShirtStyle < ApplicationRecord
  belongs_to :order

  has_paper_trail
end
