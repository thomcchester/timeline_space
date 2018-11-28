class CreateSolarClusters < ActiveRecord::Migration[5.1]
  def change
    create_table :solar_clusters do |t|

      t.timestamps
    end
  end
end
