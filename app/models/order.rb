class Order < ApplicationRecord
  enum status: [:in_progress, :placed, :shipped, :cancelled]

  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
end
