class Api::V1::CandidatesController < ApplicationFolder
  protect_from_forgery with: :null_session

    def index
      render json: Candidate.all
    end

    def show
    end

  end
