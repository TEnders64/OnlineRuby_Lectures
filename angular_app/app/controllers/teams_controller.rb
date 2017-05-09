class TeamsController < ApplicationController
    def get_teams
        render json: Team.all
    end
    
end
