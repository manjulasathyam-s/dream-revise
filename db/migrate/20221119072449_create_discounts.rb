class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :description
      t.string :discount_percent

      t.timestamps
    end
  end
end
