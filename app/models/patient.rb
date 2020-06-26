class Patient < ApplicationRecord
  has_one :trail
  has_one :drug, through: :trail
end
