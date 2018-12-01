class CreateTimePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :time_people do |t|

      t.timestamps
    end
  end
end
