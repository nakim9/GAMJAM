# classe plateForme

class PlateForme
  attr_reader :x, :y, :plateFormeWidth, :plateFormeHeight
 def initialize(x,y,plateFormeWidth,plateFormeHeight)
  #constructeur
  @x = x
  @y = y
  @plateFormeWidth=plateFormeWidth
  @plateFormeHeight=plateFormeHeight
 end
def draw
  Gosu::draw_rect(@x, @y, @plateFormeWidth, @plateFormeHeight,  Gosu::Color.new(255, 255, 0, 0)) # Rectangle rougec
end
end
