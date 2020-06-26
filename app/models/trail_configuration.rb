class TrailConfiguration < ApplicationRecord
  belongs_to :drug
  belongs_to :clinic
  belongs_to :doctor
  
  has_many :trials
end
