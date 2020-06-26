class AddNameToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :name, :string
  end
end
