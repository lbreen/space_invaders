class Player
  def initialize(window)
     @image = Gosu::Image.new("media/cannon.png")
     @window = window
     @x = (@window.width - @image.width) / 2
     @y = @window.height - @image.height - 50
  end

  def move_left
    @x -= 5
  end

  def move_right
    @x += 5
  end

  def draw
     @image.draw(@x, @y, 1)
  end
end
