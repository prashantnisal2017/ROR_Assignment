class AddCompanyToDrugs < ActiveRecord::Migration[6.0]
  def change
    add_reference :drugs, :company, null: false, foreign_key: true
  end
end
