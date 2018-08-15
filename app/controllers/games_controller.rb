class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games
  end

def create
    @game = Game.new(game_params)
      if @game.save
        @created_by_username = game_params[:created_by_username]
        @game_creator = User.find_by("username = ?", @created_by_username)
        @user_game = UserGame.new(user_id: @game_creator.id, game_id: @game.id)
          if @user_game.save
            render json: { status: 200, game: @game, creator_user_id: @game_creator.id, creator_user_name: @game.created_by_username }
          end
      end
  end
  
  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      render json: { status: 200, msg: 'Game details have been updated.' }
    end
  end

  def destroy
    game = Game.find(params[:id])
    if game.destroy
      render json: { status: 200, msg: 'Game has been deleted' }
    end
end

  private 

  def game_params
    params.require(:game).permit(:created_by_username, :name, :address, :sport, :date, :time, :comments, :max_players)
  end
end

