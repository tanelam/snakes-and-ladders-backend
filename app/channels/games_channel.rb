class GamesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    user1 = User.find(params[:opponent])
    user2 = User.find(params[:gamer])
   stream_for user1
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

# 
# "opponent_id"
# t.integer "gamer_id"
