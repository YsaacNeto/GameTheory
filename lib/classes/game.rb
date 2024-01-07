# frozen_string_literal: true

# Class to controll the game
class Game
  def initialize(rounds)
    @rounds = rounds
  end

  # receive 2 booleans
  # return points
  def solve(first, sec)
    if (first == Player::COOP) && (sec == Player::COOP)
      [3, 3]
    elsif (first == Player::DENY) == (sec == Player::DENY)
      [1, 1]
    elsif (first == Player::COOP) && (sec == Player::DENY)
      [0, 5]
    else
      [5, 0]
    end
  end

  def execute(first, sec)
    (1..@rounds).each do |_x|
      val1, val2 = solve first.run, sec.run
      first.inc val1
      sec.inc val2
    end
  end
end
