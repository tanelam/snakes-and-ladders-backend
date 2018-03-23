class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string "username"
      t.integer "opponent_id"
      t.integer "gamer_id"
      t.integer "wins"
      t.integer "looses"
      t.timestamps
    end
  end
end
