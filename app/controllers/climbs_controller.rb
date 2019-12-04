class ClimbsController < ApplicationController

  def index
    # @climbs = Climb.all
    render json: Climb.all
  end

  def show
    @climb = Climb.find(params[:id])
    render json: @climb
  end

  def create

    @climb = Climb.create(climb_params)
    if @climb.valid?
      render json: @climb, status: 201
    else
      render json: {errors: @climb.errors.full_messages}, status: 401
    end
  end

  def update
    @climb = Climb.find(params[:id])
    @climb.update(climb_params)

    render json: @climb
  end

  private

  def climb_params
    params.require(:climb).permit(:climb_id, :name, :rating, :stars, :imgSmallMed, :longitude, :latitude, :location)
  end

end
