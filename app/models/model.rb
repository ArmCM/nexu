class Model < ApplicationRecord
  belongs_to :brand
  validates :name, presence: true
  validates :average_price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :brand_id, presence: true
end
