class Api::V1::VotersController < ApplicationFolder
  protect_from_forgery with: :null_session

  def create
  end

  def index
    render json: Candidate.all
  end

end
