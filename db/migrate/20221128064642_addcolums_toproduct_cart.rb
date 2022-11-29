class AddcolumsToproductCart < ActiveRecord::Migration[6.1]
  def change
    add_column :product_carts, :product_id, :integer
    add_column :product_carts, :cart_id, :integer

  end
end
