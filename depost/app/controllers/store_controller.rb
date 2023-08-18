class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index

    # if session[:counter].nil?
    #   session[:counter] = 1
    # else
    #   session[:counter] += 1
    # end

    # @counter = session[ :counter ]
    @products = Product.order(:title)
  end

  # def set_cart
  #   @cart = Cart.find(session[:cart_id])
  # rescue ActiveRecord::RecordNotFound
  #   @cart = Cart.add
  #   session[:cart_id] = @cart.id
  #   session[:counter] = 0
  # end
end
