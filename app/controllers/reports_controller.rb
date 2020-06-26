class ReportsController < ApplicationController
  def index
    @trails = Trail.all.includes(:patient, :feedbacks, :trail_configuration)
  end
end
