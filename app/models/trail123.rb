class Trail < ApplicationRecord
  has_many :patients
  belongs_to :trail_configuration
end
