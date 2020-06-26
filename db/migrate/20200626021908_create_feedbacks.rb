class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.references :trail, null: false, foreign_key: true
      t.string :observation

      t.timestamps
    end
  end
end
