class Doctor < ApplicationRecord
	has_many :ClinicDoctor
  has_many :clinics, through: :ClinicDoctor
end
