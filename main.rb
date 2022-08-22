require "./player"
require "./game"

p1 = Player.new("1")
p2 = Player.new("2")
p1game = Game.new(p1)
p2game = Game.new(p2)

while p1.lives > 0 and p2.lives > 0
  p1game.play

  if p1.lives == 0
    puts "Player 2 wins with a score of #{p2.lives}/3!"
    puts "----- GAME OVER -----"
    return
  end
  puts "P1: #{p1.lives}/3, P2: #{p2.lives}/3"
  puts "----- NEW TURN -----"

  p2game.play

  if p2.lives == 0
    puts "Player 1 wins with a score of #{p1.lives}/3!"
    puts "----- GAME OVER -----"
    return
  end

  puts "P1: #{p1.lives}/3, P2: #{p2.lives}/3"
  puts "----- NEW TURN -----"
end