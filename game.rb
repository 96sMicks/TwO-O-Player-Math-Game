require './player'
require './question'


class Game
  is_game_over = false
  new_player1 = Player.new("Mic")
  new_player2 = Player.new("Steve")
  
  while(!is_game_over)
    new_question = Question.new

    print "#{new_player1.name}: #{new_question.print_question}"

    print "> " 
    answer = gets.chomp.to_i

    if answer == new_question.correct_answer?
     puts "YES! You are correct"
    else 
      puts "Wrong answer"
      new_player1.lose_life
    end

    puts "#{new_player1.name} has #{new_player1.lives}/3 lives vs #{new_player2.name} has #{new_player2.lives}/3 lives"

    if new_player1.lives > 0 
      is_game_over = false
      puts "--- NEW TURN ---"
    end
  end
end