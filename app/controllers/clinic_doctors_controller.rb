class ClinicDoctorsController < ApplicationController
  def index
    @clinics= Clinic.all
  end

  def show
  end

  def new
    @clinic_doctor = ClinicDoctor.new
  end

  def edit
  end

  def create
    @clinic_doctor = ClinicDoctor.new(clinic_doctor_params)

    respond_to do |format|
      if @clinic_doctor.save
        format.html { redirect_to @clinic_doctor, notice: 'Doctor clinic was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_doctor }
      else
        format.html { render :new }
        format.json { render json: @clinic_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clinic_doctor.update(clinic_doctor_params)
        format.html { redirect_to @clinic_doctor, notice: 'Doctor clinic was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_doctor }
      else
        format.html { render :edit }
        format.json { render json: @clinic_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clinic_doctor.destroy
    respond_to do |format|
      format.html { redirect_to clinic_doctors_url, notice: 'Doctor clinic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_doctor_clinic
    @doctor_clinic = Doctorclinic.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def clinic_doctor_params
    params.require(:doctor_clinic).permit(:clinic_id, :doctor_id)
  end
end
