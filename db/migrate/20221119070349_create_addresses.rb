class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :flat_no
      t.string :house_name
      t.string :street_name
      t.integer :city_village_id
      t.integer :district_id
      t.integer :state_id
      t.integer :country_id
      t.integer :pincode

      t.timestamps
    end
  end
end
