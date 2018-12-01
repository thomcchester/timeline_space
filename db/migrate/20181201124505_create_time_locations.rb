class CreateTimeLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :time_locations do |t|

      t.timestamps
    end
  end
end
