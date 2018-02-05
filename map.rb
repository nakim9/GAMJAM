# classe map

class Map
  attr_reader :list
 def initialize()
  #constructeur
  @list = Array.new
 end

 def add(plateForme)
  @list.push(plateForme)
 end

 def draw
  @list.each do |i|
    i.draw
  end
 end
end
