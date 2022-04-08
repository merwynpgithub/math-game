require_relative ("player")

class Game
  attr_accessor :player1, :player2, :num1, :num2, :current_player, :ans

 def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @num1 = 0
    @num2 = 0
    @current_player = @player1
    @ans = 0
 end

 def play
  puts "start Game"

  while (@player1.lives > 0) && (@player2.lives > 0)
    puts "-----NEW TURN-----"
    set_question
    get_answer
    check_answer
    calculate_lives
    switch_player
  end
  
  announce_winner
  puts "game over"


 end

 def set_question
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  puts "Current Player is #{@current_player.name}"
  puts "What does #{@num1} plus #{@num2} equal?"
 end

 def get_answer
  answer = gets.chomp.to_i
  @ans = answer
 end

 def check_answer
  correct_ans = @num1 + @num2
  @ans == correct_ans
 end

 def calculate_lives
  if !check_answer
    @current_player.lives -= 1
  end
  puts @current_player.lives
  puts "player1 lives are #{@player1.lives}"
  puts "player2 lives are #{@player2.lives}"
 end

 def switch_player
  @current_player == @player1 ?  @current_player = @player2 : @current_player = @player1
 end

 def announce_winner
  @player1.lives == 0 ? result = "Winner is #{@player2.name}" : result = "Winner is #{@player1.name}"
  puts result
 end

end

p1 = Player.new("David", 3)
p2 = Player.new("Merwyn", 3)
puts p1.inspect
puts p2.inspect
game1 = Game.new(p1, p2)
game1.play