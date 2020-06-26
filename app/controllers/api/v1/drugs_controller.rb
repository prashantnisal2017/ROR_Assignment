class Api::V1::DrugsController < ApplicationController
  before_action :set_drug, only: [:show, :update, :destroy]

  def create
   @drug = drug.new(drug_params)
   if @drug.save
    render json: @drug, status: :created, location: api_v1_drug_url(@drug)
   else
    render json: @drug.errors, status: :unprocessable_entity
   end
  end

  def destroy
   @drug.destroy
  end

  def show
   render json: @drug
  end

  private
  
  def set_drug
   @drug = drug.find(params[:id])
  end

  def drug_params
    params.require(:drug).permit(:name,:target_alignment,:side_effect)
  end
end
