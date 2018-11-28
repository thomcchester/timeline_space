class CreateArtificialConstructs < ActiveRecord::Migration[5.1]
  def change
    create_table :artificial_constructs do |t|

      t.timestamps
    end
  end
end
