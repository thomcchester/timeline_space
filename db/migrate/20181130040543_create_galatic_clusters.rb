class CreateGalaticClusters < ActiveRecord::Migration[5.1]
  def change
    create_table :galatic_clusters do |t|

      t.timestamps
    end
  end
end
