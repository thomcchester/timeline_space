class AddSpeciesOriginToPerson < ActiveRecord::Migration[5.1]
  def change
    add_reference :people, :species_origin, foreign_key: true
  end
end
