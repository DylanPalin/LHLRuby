class Players
  def initialize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def score
    @players.inject(0) { |sum, player| sum + player.score }
  end
end

# Player.rb
class Player
  attr_accessor :lives

  def initialize(name, score)
    @name = name
    @score = score
    @lives = 3
  end

  def name
    @name
  end

  def score
    @score
  end

  def lose_life
    @lives -= 1
  end
end
# Path: rubyTheHardWay/myStuff/Players.rb