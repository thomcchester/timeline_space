class AddTimeLocationToPersonTimeLine < ActiveRecord::Migration[5.1]
  def change
    add_reference :person_time_lines, :time_location, foreign_key: true
  end
end
