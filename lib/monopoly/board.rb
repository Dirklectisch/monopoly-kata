class Board
  
  def initialize positions = 40
    @postions = positions
  end
  
  def start
    1
  end
  
  def destination current, distance
    rel_dest = current + distance
    if rel_dest > 40 then
      dest = rel_dest % 40
    else
      dest = rel_dest
    end
  end
  
  alias :dest :destination
  
end