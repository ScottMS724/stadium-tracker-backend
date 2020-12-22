class Api::V1::StadiumsController < ApplicationController
  # before_action :set_stadium, only: [:show, :update, :destroy]

  
  def index
    if logged_in? 
      @stadiums = current_user.stadiums 

      render json: StadiumSerializer.new(@stadiums) 
    else 
      render json: {
        error: "You must be logged in to see stadiums."
      }
    end
  end

  
  def show
    @stadium = Stadium.find(params[:id])

    render json: StadiumSerializer.new(@stadium)
  end

  
  def create
    @stadium = Stadium.new(stadium_params)

    if @stadium.save
      render json: @stadium, status: :created, location: @stadium
    else
      render json: @stadium.errors, status: :unprocessable_entity
    end
  end


  def update
    if @stadium.update(stadium_params)
      render json: @stadium
    else
      render json: @stadium.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @stadium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadium
      @stadium = Stadium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stadium_params
      params.require(:stadium).permit(:name, :city, :image, :user_id)
    end
end
