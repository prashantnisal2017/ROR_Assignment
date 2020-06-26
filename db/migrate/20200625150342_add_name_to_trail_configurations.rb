class AddNameToTrailConfigurations < ActiveRecord::Migration[6.0]
  def change
    add_column :trail_configurations, :name, :string
  end
end
