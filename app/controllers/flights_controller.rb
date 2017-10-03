class FlightsController < ApplicationController
  # GET /flights
  def index
    @flights = Flight.all
  end

  # GET /flights/1
  def show
    @flight = Flight.find(params[:id])
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
    @flight = Flight.find(params[:id])
  end

  # POST /flights
  def create
    @flight = Flight.new(flight_params)

    if @flight.save
      redirect_to @flight, notice: 'Flight was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flights/1
  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to @flight, notice: 'Flight was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /flights/1
  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to flights_url, notice: 'Flight was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def flight_params
    params.require(:flight).permit(:Origin, :Destination)
  end
end
