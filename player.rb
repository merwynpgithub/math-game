class Player

  attr_accessor :name, :lives
  
  def initialize(name , lives = 3)
    @name = name
    @lives = lives
  end


end



=begin
initalize
@num1, @num2 rand(1..20)
@player1, @player2, @current_player
player1.lives, player2.lives (equal to 3)

end

1. make a class Player/Game
2. method to play/start
  a. puts start game
  b. while loop(true if player1.lives, player2.lives > 0)
    (assign 2 numbers,puts ask sum of 2 numbers)....method get_question
    ans = gets.chomp.to_i....method get_answer... @current_player = @player1
    check ans with (@num1+@num2)....method check_answer (boolean t/f)
    if false then player1.lives -= 1....method calculate lives
    if @current_player == @player1,....then swap.....method change_player
  end

  c. if player1.lives then player1 wins else player2 wins
  d. game end


  game = Game.new
  game.play

=end