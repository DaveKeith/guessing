require "pry"

require "./human"
require "./game"
require "./counting"
require "./random"
require "./smart"

# binding.pry

puts "What sort of player do you want?\n\t1 = smart computer\n\t2 = countdown
\t3 = random number generator\n\tany other number will generate a human player"
choice = gets.chomp.to_i
case choice
when 1
  player = SmartPlayer.new
when 2
  player = CountingPlayer.new
when 3
  player = RandomPlayer.new
else
  player = Human.new
end


game = Game.new(100, player)
game.activate(player)
game.play

# binding.pry
