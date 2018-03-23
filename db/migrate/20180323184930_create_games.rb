class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer "opponent_id"
      t.integer "gamer_id"
      t.integer "winner"
      t.integer "looser"
      t.string "board_type"
      t.timestamps
    end
  end
end
