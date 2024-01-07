class Game
  def initialize rounds
    @rounds = rounds
  end

  def execute p1, p2
    (1..@rounds).each do |x|
      tp1 = p1.run
      tp2 = p2.run
      case 
      when tp1 == true && tp1 == tp2
        p1.inc 3
        p2.inc 3
      when tp1 == false && tp1 == tp2
        p1.inc 1
        p2.inc 1
      when tp1 == true && tp1 != tp2
        p2.inc 5
      else
        p1.inc 5
      end
    end
  end
end
