class CreateDoctorsAndClinicsAssociation < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_doctors do |t|
      t.belongs_to :doctor
      t.belongs_to :clinic
    end
  end
end