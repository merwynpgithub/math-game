require_relative ("player")
require_relative ("game")

p1 = Player.new("David", 3)
p2 = Player.new("Merwyn", 3)

game1 = Game.new(p1, p2)
game1.play