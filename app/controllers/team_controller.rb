class TeamController < ApplicationController
def index
  all_teams = Team.all 
  team = all_teams
  render json: team
end
def create
  team = Team.new(
    user_id: params[:user_id],
    pokemon_id: params[:pokemon_id],
  )
  team.save 
end
def destroy
  team_id = params["id"]
  pokemon = Team.find_by(id: team_id)
  pokemon.destroy
  render json: "The Pokemon has been deleted!"
end
end


