class ChangeGalacticClusterToGalacticClusters < ActiveRecord::Migration[5.1]
  def change
    rename_table :galactic_cluster, :galactic_clusters
  end
end
