class Board
  
  def initialize
    @postions = 40
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
  
end