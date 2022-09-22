class CustomTravelsController < ApplicationController
  before_action :set_custom_travel, only: %i[ show edit update destroy ]

  # GET /custom_travels or /custom_travels.json
  def index
    @custom_travels = CustomTravel.all
  end

  # GET /custom_travels/1 or /custom_travels/1.json
  def show
  end

  # GET /custom_travels/new
  def new
    @custom_travel = CustomTravel.new
  end

  # GET /custom_travels/1/edit
  def edit
  end

  # POST /custom_travels or /custom_travels.json
  def create
    @custom_travel = CustomTravel.new(custom_travel_params)

    respond_to do |format|
      if @custom_travel.save
        format.html { redirect_to custom_travel_url(@custom_travel), notice: "Custom travel was successfully created." }
        format.json { render :show, status: :created, location: @custom_travel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custom_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_travels/1 or /custom_travels/1.json
  def update
    respond_to do |format|
      if @custom_travel.update(custom_travel_params)
        format.html { redirect_to custom_travel_url(@custom_travel), notice: "Custom travel was successfully updated." }
        format.json { render :show, status: :ok, location: @custom_travel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custom_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_travels/1 or /custom_travels/1.json
  def destroy
    @custom_travel.destroy

    respond_to do |format|
      format.html { redirect_to custom_travels_url, notice: "Custom travel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_travel
      @custom_travel = CustomTravel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_travel_params
      params.require(:custom_travel).permit(:departure, :destination, :date, :price, :rating, :comments, :physical, :characteristics, :event_bool, :event)
    end
end
