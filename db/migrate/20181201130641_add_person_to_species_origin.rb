class AddPersonToSpeciesOrigin < ActiveRecord::Migration[5.1]
  def change
    add_reference :species_origins, :person, foreign_key: true
  end
end
