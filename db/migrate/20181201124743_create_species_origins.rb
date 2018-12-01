class CreateSpeciesOrigins < ActiveRecord::Migration[5.1]
  def change
    create_table :species_origins do |t|

      t.timestamps
    end
  end
end
