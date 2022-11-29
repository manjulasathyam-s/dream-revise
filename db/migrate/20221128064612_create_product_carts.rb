class CreateProductCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :product_carts do |t|

      t.timestamps
    end
  end
end
