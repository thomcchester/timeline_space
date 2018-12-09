class ChangeGalaticClustersToGalaticClusters < ActiveRecord::Migration[5.1]
  def change
    rename_table :galatic_clusters, :galactic_cluster
  end
end
