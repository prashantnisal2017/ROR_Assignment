class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :country
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
