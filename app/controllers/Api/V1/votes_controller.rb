class Api::V1::VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      redirect_to api_v1_votes_path, notice: 'Vote was successfully created.'
    else
      render :new
    end
  end

  def index
    render json: Vote.all
  end

  private def vote_params
      params.require(:vote).permit(:voter_id, :candidate_id)
    end

end
