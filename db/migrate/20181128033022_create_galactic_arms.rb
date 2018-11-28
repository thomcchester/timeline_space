class CreateGalacticArms < ActiveRecord::Migration[5.1]
  def change
    create_table :galactic_arms do |t|

      t.timestamps
    end
  end
end
