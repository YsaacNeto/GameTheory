require './player.rb'

class Tit_for_tat < Player
  # run aqui carrega toda a estrategia do player tit for tat
  def run
    @play
  end
  
  def update_play new_play
    @play = new_play
  end
end


