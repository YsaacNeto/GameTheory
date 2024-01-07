class Player
  attr_accessor :points
  def initialize 
    @options = { :coop => true, :deny => false}
    @play = true
    @points = 0
  end

  def inc x
    @points += x
  end
end
