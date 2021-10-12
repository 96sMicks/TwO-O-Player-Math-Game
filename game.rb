require './player'
require './question'


class Game

 
  new_player = Player.new("Mic")
  new_question = Question.new

  print "#{new_player.name}: #{new_question.print_question}"

  print "> " 
  answer = gets.chomp.to_i

  if answer == new_question.correct_answer?
    puts "YES! You are correct"
  else 
    puts "Wrong answer"
    new_player.lose_life
  end

  puts "#{new_player.name} has #{new_player.lives}/3 lives vs #{new_player.name} has #{new_player.lives}/3 lives"
end