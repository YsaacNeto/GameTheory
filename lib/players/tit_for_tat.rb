# frozen_string_literal: true

# Tit_for_tat < Player
class TitForTat < Player
  def initialize
    super
    @play = Player::COOP
  end

  # run aqui carrega toda a estrategia do player tit for tat
  def run
    @play
  end

  def inc(val)
    super val
    update_play(Player::COOP) if val.eql? 3
    update_play(Player::DENY) if [1, 0].include?(val)
  end

  private

  def update_play(new_play)
    @play = new_play
  end
end
