class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details
  
  validates :customer_id, presence: true, numericality: true
  validates :status, presence: true, inclusion: { in: %w(NEW PAID CANCELED),
      message: "%{value} is not a valid status" }

	def total_price
	  total_price = self.order_details.map { |order_details| order_details.sub_total }.sum
	end
end
