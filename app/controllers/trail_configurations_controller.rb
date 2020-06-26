class TrailConfigurationsController < ApplicationController
  before_action :set_trail_configuration, only: [:show, :edit, :update, :destroy]

  # GET /trail_configurations
  # GET /trail_configurations.json
  def index
    @trail_configurations = TrailConfiguration.all
  end

  # GET /trail_configurations/1
  # GET /trail_configurations/1.json
  def show
  end

  # GET /trail_configurations/new
  def new
    @trail_configuration = TrailConfiguration.new
  end

  # GET /trail_configurations/1/edit
  def edit
  end

  # POST /trail_configurations
  # POST /trail_configurations.json
  def create
    @trail_configuration = TrailConfiguration.new(trail_configuration_params)

    respond_to do |format|
      if @trail_configuration.save
        format.html { redirect_to trail_configurations_path, notice: 'Trail configuration was successfully created.' }
        format.json { render :show, status: :created, location: @trail_configuration }
      else
        format.html { render :new }
        format.json { render json: @trail_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trail_configurations/1
  # PATCH/PUT /trail_configurations/1.json
  def update
    respond_to do |format|
      if @trail_configuration.update(trail_configuration_params)
        format.html { redirect_to @trail_configuration, notice: 'Trail configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @trail_configuration }
      else
        format.html { render :edit }
        format.json { render json: @trail_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trail_configurations/1
  # DELETE /trail_configurations/1.json
  def destroy
    @trail_configuration.destroy
    respond_to do |format|
      format.html { redirect_to trail_configurations_url, notice: 'Trail configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail_configuration
      @trail_configuration = TrailConfiguration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trail_configuration_params
      params.require(:trail_configuration).permit(:name, :drug_id, :clinic_id, :doctor_id)
    end
end
