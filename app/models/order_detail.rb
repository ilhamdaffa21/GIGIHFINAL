class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :food

  validates :order_id, presence: true, numericality: true
  validates :food_id, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
  validates_numericality_of :quantity, :greater_than => 0

  before_save :sub_total

  def sub_total
    sub_total = self.quantity * self.food_price
  end
end
