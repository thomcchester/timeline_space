class AddStatusToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :status, :string
  end
end
