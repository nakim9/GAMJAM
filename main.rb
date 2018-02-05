require 'gosu'

#inclure les différents fichiers
require_relative 'z_order'
require_relative 'hero'
require_relative 'window'

WindowWidth = 1920
WindowHeight = 1080

Window = Window.new(WindowWidth, WindowHeight)
Window.show
