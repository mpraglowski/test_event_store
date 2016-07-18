module ApplicationHelper
  def order_product_button(product)
    if @current_order.products.include?(product)
      link_to "Remove from cart", order_products_path(product_id: product.id), method: :delete
    else
      link_to "Add to cart", order_products_path(product_id: product.id), method: :post
    end
  end
end
