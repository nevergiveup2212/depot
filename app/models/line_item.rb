class LineItem < ApplicationRecord
  belongs_to :product , optional: true
  belongs_to :cart, optional: true
  belongs_to :cart
  def total_price
    product.price * quantity
  end
end
