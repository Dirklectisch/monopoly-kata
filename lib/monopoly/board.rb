class Board
  
  def initialize positions = 40
    @postions = positions
  end
  
  def start
    1
  end
  
  def destination curr, dist
    abs = curr + dist
    if abs < 40 then
      rel = abs
    else
      rel = abs % 40
    end
    return rel
  end
  
  alias :dest :destination
  
end