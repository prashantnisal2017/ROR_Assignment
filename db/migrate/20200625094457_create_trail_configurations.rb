class CreateTrailConfigurations < ActiveRecord::Migration[6.0]
  def change
    create_table :trail_configurations do |t|
      t.references :drug, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.timestamps
    end
  end
end
