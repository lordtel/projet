class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :postalcode
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
