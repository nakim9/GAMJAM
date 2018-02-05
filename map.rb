# classe map

class Map
 def initialize()
  #constructeur
  @list = array.new
 end

def add(plateForme)
  @list.push(plateForme)
end





def draw
  Gosu::draw_rect(@x, @y, @plateFormeWidth, @plateFormeHeight,  Gosu::Color.new(255, 255, 0, 0)) # Rectangle rougec
end
end
