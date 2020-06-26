class Feedback < ApplicationRecord  
  belongs_to :trail
  enum observation: {
    :not_feeling_well => "Not feeling well",
    :feeling_better => "Feeling better",
    :happy => "Happy"
  }

end
