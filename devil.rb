require './player.rb'

class Devil < Player
  def run
    @options[:deny]
  end
end

