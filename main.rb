require 'gosu'

#inclure les différents fichiers
require_relative 'z_order'
require_relative 'hero'
require_relative 'window'
require_relative 'plateForme'
require_relative 'map'



WindowWidth = 1024
WindowHeight = 576

Window = Window.new(WindowWidth, WindowHeight)
Window.show
