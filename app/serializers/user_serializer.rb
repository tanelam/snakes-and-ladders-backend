class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :opponent_id, :gamer_id
  has_many :opponent_games
  has_many :gamer_games
end
