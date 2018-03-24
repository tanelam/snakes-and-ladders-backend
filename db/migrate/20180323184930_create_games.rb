class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer "opponent_id"
      t.integer "gamer_id"
      t.integer "winner"
      t.integer "looser"
      t.string "board_type"
      t.integer "gamers_position"
      t.integer "opponents_position"
      t.timestamps
    end
  end
end
