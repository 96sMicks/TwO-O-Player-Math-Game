class Question

  attr_reader :num1, :num2
  
  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
  end

  def correct_answer
    num1 + num2
  end
end

q = Question.new
puts q.num1
puts q.num2
puts q.correct_answer
