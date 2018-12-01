class CreatePersonTimeLines < ActiveRecord::Migration[5.1]
  def change
    create_table :person_time_lines do |t|

      t.timestamps
    end
  end
end
