class Api::V1::VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :update, :destroy]

  # GET /visits
  def index
    if logged_in? 
      @visits = current_user.visits 

      render json: VisitSerializer.new(@visits) 
    else 
      render json: {
        error: "You must be logged in to see visits."
      }
    end
  end

  # GET /visits/1
  def show
    @visit = Visit.find(params[:id]) 

    render json: VisitSerializer.new(@visit)
  end

  # POST /visits

  def create
    @visit = Visit.new(visit_params)

    if @visit.save
      render json: VisitSerializer.new(@visit), status: :created
    else
      error_resp = {
        error: @visit.errors.full_messages.to_sentence 
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visits/1
  def update
    if @visit.update(visit_params)
      render json: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visits/1
  def destroy
    @visit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def visit_params
      params.require(:visit).permit(:date, :description, :stadium_id)
    end
end
