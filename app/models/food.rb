class Food < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { maximum: 150 }
  validates :price, presence:true, numericality: true
  validates_numericality_of :price, :greater_than => 0.01
end
