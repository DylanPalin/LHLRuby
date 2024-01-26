class Game
  attr_accessor :players, :current_player
  
  def initialize(players)
    @players = players
    @current_player = players.first
  end
  
  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{@current_player.name}: what does #{num1} plus #{num2} equal?"
    return num1 + num2
  end
  
  def play_turn
    answer = generate_question
    player_answer = gets.chomp.to_i
    if player_answer != answer
      @current_player.lose_life
      puts "❌ WRONG! ❌ -- You have #{current_player.lives} lives left"
    else
      puts "✅ Correct! ✅ "
    end
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    puts "----- NEW TURN -----" unless @players.any? { |player| player.lives == 0 }
    switch_player
  end

  def switch_player
    @current_player = @players.rotate!.first
  end

  def play_game
    while @players.any? { |player| player.lives > 0 }
      play_turn
    end
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end
end