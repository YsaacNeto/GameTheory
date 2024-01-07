require './src/players/jesus.rb'
require './src/players/devil.rb'
require './src/classes/game.rb'


def main 
  game = Game.new(3)
  jesus = Jesus.new
  devil = Devil.new
  game.execute(jesus, devil)
  p "jesus: #{jesus.points}, devil: #{devil.points}"
end

main
