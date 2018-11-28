class CreateSolarSytems < ActiveRecord::Migration[5.1]
  def change
    create_table :solar_sytems do |t|

      t.timestamps
    end
  end
end
