class sol

    def initialize()
      # placeent du sol
      @x = 0
      @y = 500
      @image = Gosu::Image.new("res/vert.png")
    end

    def draw
      @image.draw(@x, @y, ZOrder::Hero)
    end
