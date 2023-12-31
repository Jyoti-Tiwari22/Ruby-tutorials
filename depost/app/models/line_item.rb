class LineItem < ApplicationRecord
  def total_price
    product.price * quantity
  end

  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :cart, optional: true

end
