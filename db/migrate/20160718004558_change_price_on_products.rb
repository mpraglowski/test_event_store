class ChangePriceOnProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :price, :integer
    add_monetize :products, :price
  end
end
