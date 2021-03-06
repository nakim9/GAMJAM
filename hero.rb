# classe Héros

class Hero
  attr_reader :x, :y
  # constructeur
  def initialize(x, y)
    # coordonnées
    @x = x
    @y = y
    @radius = 10
    # vitesse (de base 0 : à l'arret)
    @velocityX = 0.0
    @velocityY = 1.0
    #image du personnage
    @image = Gosu::Image.new("res/hero.png")
  end

  def draw
    @image.draw(@x, @y, ZOrder::Hero)
  end

  # vitesse en x diminue (équivaut à un déplacement vers la gauche)
  def go_left
    @velocityX -= 0.5
  end

  # vitesse en x augmente (équivaut à un déplacement vers la droite)
  def go_right
    @velocityX += 0.5
  end

  # vitesse en y diminue (équivaut à un déplacement vers le haut)
  def go_up
    @velocityY -= 25
    move
    sleep(1.0/24.0)
    @velocityY += 25
  end

  # vitesse en y augmente (équivaut à un déplacement vers le bas)
  def go_down
    @velocityY += 0.5
  end

  # modification des coordonées du héros
  def move
    @x += @velocityX
    @x %= WindowSize::Width
    @y += @velocityY
    @y %= WindowSize::Height
    @velocityX *= 0.96
    if @velocityY<1
    @velocityY *= 0.96
    end
  end

  def enContact (other)
    #permet de pouvoir aller sur des plateformes
    bool=false
    other.list.each do |i|

    if @x>i.x && @x<(i.x + i.plateFormeWidth)
      if Gosu.distance(@x, @y, @x, i.y) < 150
        @velocityY = 0
      end
    elsif @y>i.y && @y<(i.y+i.plateFormeHeight)
      if Gosu.distance(@x, @y, i.x, @y) < 150
        @velocityX = 0
      end
    end
    if Gosu.distance(@x, @y, @x, i.y) < 150
      bool=false
    end
  end
end
end
