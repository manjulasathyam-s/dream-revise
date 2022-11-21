class CreateCityVillages < ActiveRecord::Migration[6.1]
  def change
    create_table :city_villages do |t|
      t.string :name
      t.integer :district_id

      t.timestamps
    end
  end
end
