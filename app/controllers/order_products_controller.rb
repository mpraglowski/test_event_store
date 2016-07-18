class OrderProductsController < ApplicationController
  def create
    @current_order.order_products.find_or_create_by(product_id: params[:product_id])
    redirect_to products_url
  end

  def destroy
    @current_order.order_products.find_by(product_id: params[:product_id])&.destroy
    redirect_to products_url
  end
end
