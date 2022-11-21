class CreateCartLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_logs do |t|
      t.integer :cart_id
      t.integer :initial_value
      t.integer :final_value
      t.string :reason

      t.timestamps
    end
  end
end
