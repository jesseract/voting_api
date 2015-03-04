class Api::V1::VotersController < ApplicationController

    def create
      @voter = Voter.new(params[:name, :party])
      if @voter.save
        render json: @voter
      else
        render json: "Invalid parameters"
      end
    end

    def show
      @voter = Voter.find(voter_params)
      render json: @voter
    end

    def update
    end

    def index
      render json: Voter.all
    end


    private def vote_params
        params.require(:voter).permit(:name, :party)
      end


  end
