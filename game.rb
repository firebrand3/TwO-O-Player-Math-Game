require_relative "./player"
require_relative "./question"

class Game
  def initialize
    @play1 = Player.new("Player1")
    @play2 = Player.new("Player2")
  end


  def start_game
    get_player_names
    new_turn
  end
  
  def new_turn
    while @play1.is_alive && @play2.is_alive do
      ask_question(@play1)
        if !@play1.is_alive
          puts "#{@play2.name} wins with a score of #{@play2.lives}/3"
          puts "----- GAME OVER -----"
          puts "Good bye!"
          break;
        end
      puts "----- NEW TURN -----"
      ask_question(@play2)
        if !@play2.is_alive
          puts "#{@play1.name} wins with a score of #{@play1.lives}/3"
          puts "----- GAME OVER -----"
          puts "Good bye!"
          break;
        end
      puts "----- NEW TURN -----"
    end
  end

  
  
  def get_player_names
    print "Player 1, enter name: "
    @play1.name = gets.chomp
    print "Player 2, enter name: "
    @play2.name = gets.chomp
    puts "\n"
  end


  def ask_question(player)
    question = Question.new
    puts "#{player.name}: What does #{question.number1} plus #{question.number2} equal"
    answer = gets.chomp.to_i
    if question.check_answer(answer)
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.reduce_life
    end
    puts "#{@play1.name}: #{@play1.lives}/3 vs #{@play2.name}: #{@play2.lives}/3"
    puts "\n"
  end
end

new_game = Game.new
new_game.start_game