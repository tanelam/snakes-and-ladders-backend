class User < ApplicationRecord
  has_many :opponents, through: :gamer_games, source: :opponent
  has_many :gamer_games, foreign_key: :gamer_id, class_name: "Game"

  has_many :gamers, through: :opponent_games, source: :gamer
  has_many :opponent_games, foreign_key: :opponent_id, class_name: "Game"


end
