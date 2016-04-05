class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :route
      t.string :address
      t.float :latitude
      t.float :longtitude

      t.timestamps null: false
    end
  end
end
