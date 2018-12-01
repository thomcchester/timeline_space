class CreateSpeciesOriginBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :species_origin_blocks do |t|

      t.timestamps
    end
  end
end
