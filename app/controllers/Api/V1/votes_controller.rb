class Api::V1::VotesController < ApplicationController
  respond_to :json

  def create
    vote = Vote.new(vote_params)

    if vote.save
      render json: vote
    else
      render json: "WAMP"
    end
  end

  def index
    render json: Vote.all
  end

  private def vote_params
      params.require(:vote).permit(:voter_id, :candidate_id)
    end

end
