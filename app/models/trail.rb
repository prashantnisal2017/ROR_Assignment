class Trail < ApplicationRecord
  belongs_to :trail_configuration
  belongs_to :patient
  has_many :feedbacks
end
