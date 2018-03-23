class GameSerializer < ActiveModel::Serializer
  attributes :id, :opponent_id, :gamer_id, :winner, :looser
  belongs_to :opponent
  belongs_to :gamer
end
