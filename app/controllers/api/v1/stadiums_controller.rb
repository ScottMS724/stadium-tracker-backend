class Api::V1::StadiumsController < ApplicationController
  before_action :set_stadium, only: [:show, :update, :destroy]

  
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
    @stadium = current_user.stadiums.build(stadium_params)

    if @stadium.save
      render json: StadiumSerializer.new(@stadium), status: :created
    else
      error_resp = {
        error: @stadium.errors.full_messages.to_sentence 
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end


  def update
    if @stadium.update(stadium_params)
      render json: StadiumSerializer.new(@stadium), status: :ok
    else
      error_resp = {
        error: @stadium.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end


  def destroy
    if @stadium.destroy
      render json: { data: "Stadium successfully deleted." }, status: :ok 
    else 
      error_resp = {
        error: "Stadium not found and not destroyed."
      }
      render json: error_resp, status: :unprocessable_entity 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadium
      @stadium = Stadium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stadium_params
      params.require(:stadium).permit(:name, :city, :image)
    end
end
