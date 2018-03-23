class GamesController < ApplicationController



   def index
     @games = Game.all
     render json: @games
   end

   def show
     @game = Game.find(params[:id])
     render json:@game
   end

   def create
     @game = Game.create(game_params)
     # game = @game.game_amount
     # @user = User.find(@game.bookie_id)
     #
     # amount = @user.money - game
     # @user.update(money: amount)
     @game.save

     render json: @game
   end

   def update
     @game = Game.find(params[:id])
     @game.update(game_params)
     render json:@game

   end
end
