require './player'
require './question'


class Game
  is_game_over = false
  new_player1 = Player.new("Player 1")
  new_player2 = Player.new("Player 2")

  current_player = new_player1
  next_player = new_player2

  while(!is_game_over)
    new_question = Question.new

    puts "#{current_player.name}: #{new_question.print_question}"

    print "> " 
    answer = gets.chomp.to_i

    if answer == new_question.correct_answer?
     puts "YES! You are correct"
    else 
      puts "Wrong answer"
      current_player.lose_life
    end

    puts "#{current_player.name} has #{current_player.lives}/3 lives vs #{next_player.name} has #{next_player.lives}/3 lives"

    if current_player.lives > 0 
      is_game_over = false
      puts "--- NEW TURN ---"
      # assigns it to a new variable, NOT a direct mutating of state like react, it just grabs the value
      temp_player = current_player

      current_player = next_player
      
      next_player = temp_player
    else 
      is_game_over = true
      puts "#{next_player.name} wins with a score of #{next_player.lives}/3 \n --- GAME OVER --- \n Good Bye!"
    end

  end
end