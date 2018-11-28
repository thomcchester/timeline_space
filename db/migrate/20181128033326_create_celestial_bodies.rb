class CreateCelestialBodies < ActiveRecord::Migration[5.1]
  def change
    create_table :celestial_bodies do |t|

      t.timestamps
    end
  end
end
