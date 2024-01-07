# frozen_string_literal: true

require 'zeitwerk'
loader = Zeitwerk::Loader.new
loader.push_dir('lib/classes')
loader.push_dir('lib/players')
loader.setup

game = Game.new(3)
jesus = Jesus.new
devil = Devil.new
tit = TitForTat.new

p 'jesus x devil'
game.execute(jesus, devil)
p "#{jesus.points}, #{devil.points}"
p

p 'jesus x tit'
game.execute(jesus, tit)
p "#{jesus.points}, #{tit.points}"
p

p 'devil x tit'
game.execute(devil, tit)
p "#{devil.points}, #{tit.points}"
