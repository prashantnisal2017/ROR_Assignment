class Clinic < ApplicationRecord
	has_many :ClinicDoctor
  has_many :doctors, through: :ClinicDoctor
end
