# frozen_string_literal: true

# Player is a generic class
class Player
  attr_accessor :points

  COOP = true
  DENY = false

  def initialize
    @play = true
    @points = 0
  end

  def inc(val)
    @points += val
  end
end
