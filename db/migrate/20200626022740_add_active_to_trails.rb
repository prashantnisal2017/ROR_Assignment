class AddActiveToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :active, :boolean
  end
end
