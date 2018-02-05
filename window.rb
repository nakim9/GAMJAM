# classe fille Window qui hérite de la classe Window de Gosu
class Window < Gosu::Window

  # constructeur de la classe Window
  def initialize(width, height)
    # appel au constructeur de la classe Gosu::Window
    super
    # nom de la fenetre
    self.caption = "Mon jeu"
    @background_image = Gosu::Image.new("res/picture.jpg")
    @hero = Hero.new(width/4, height/4)
    @sol = Sol.new()
  end
  def update
    # FAIRE fonction SI indiceTouchePressée EST touche
    @hero.go_left if Gosu::button_down?(Gosu::KbLeft)
    @hero.go_right if Gosu::button_down?(Gosu::KbRight)
    @hero.go_up if Gosu::button_down?(Gosu::KbUp)
    @hero.go_down if Gosu::button_down?(Gosu::KbDown)
    # la fonction move est appelée dans tous les cas
    @hero.move
    # fermer la fenêtre si la touche pressée est Echap
    close if Gosu::button_down?(Gosu::KbEscape)
  end

  def draw
    @background_image.draw(0, 0, ZOrder::Background)
    @hero.draw
    @sol.draw
  end
end
