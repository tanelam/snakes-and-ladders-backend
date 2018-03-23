class Game < ApplicationRecord
  belongs_to :opponent, foreign_key: "opponent_id", class_name: "User", optional: true
  belongs_to :gamer, foreign_key: "gamer_id", class_name: "User", optional: true
  
end
