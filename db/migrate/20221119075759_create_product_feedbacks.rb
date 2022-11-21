class CreateProductFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :product_feedbacks do |t|
      t.integer :product_id
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
