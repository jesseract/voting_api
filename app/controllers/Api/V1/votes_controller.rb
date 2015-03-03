class Api::V1::VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
  end

  def index
    render json: Vote.all
  end

  private def vote_params
      params.require(:vote).permit(:voter_id, :candidate_id)
    end

end
