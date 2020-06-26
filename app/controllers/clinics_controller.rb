class ClinicsController < ApplicationController
   before_action :set_clinic, only: [:show, :edit, :update, :destroy]
   def index
    @clinics= Clinic.all
  end

  def show
    @doctors = @clinic.doctors.all 
  end

  def new
    @clinic = Clinic.new
    @doctors = Doctor.all 
  end

  def edit
    @doctors = @clinic.doctors
  end

  def create
    @clinic = Clinic.new(clinic_params)

    respond_to do |format|
      if @clinic.save  
        @clinic.doctors = Doctor.where(id:params[:clinic][:doctors].reject(&:blank?))
        # params[:clinic][:doctors].each do |doctor_id|
        #   if !doctor_id.empty?
            
        #     # @clinic.doctors.build(:id => doctor_id).save
        #   end
        # end
        format.html { redirect_to clinics_path, notice: 'Doctor clinic was successfully created.' }
        format.json { render :show, status: :created, location: @clinic }
      else
        format.html { render :new }
        format.json { render json: @clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clinic.update(clinic_params)
        format.html { redirect_to @clinic, notice: 'Doctor clinic was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic }
      else
        format.html { render :edit }
        format.json { render json: @clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clinic.destroy
    respond_to do |format|
      format.html { redirect_to clinics_url, notice: 'Doctor clinic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_clinic
    @clinic = Clinic.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def clinic_params
    params.require(:clinic).permit(:name, :country, :state, :city, doctors: [:id])
  end

end
