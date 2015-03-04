class Api::V1::CandidatesController < ApplicationController

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      render json: Candidate.all
    else
      render :new
    end
  end

  def index
    render json: Candidate.all
  end

  def show
    @candidate = Candidate.find(candidate_params)
  end

  private def candidate_params
      params.require(:candidate).permit(:name, :party)
  end

end
