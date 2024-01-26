require_relative 'player'
require_relative 'game'

class App
  def self.start_game
    player1 = Player.new("Player 1", 0)
    player2 = Player.new("Player 2", 0)
    game = Game.new([player1, player2])
    game.play_game
  end
end

App.start_game