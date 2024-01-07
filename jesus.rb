require './player.rb'

class Jesus < Player
  def run
    @options[:coop]
  end
end
