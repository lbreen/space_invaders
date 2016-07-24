require 'gosu'
require_relative 'player'

class GameWindow < Gosu::Window
  def initialize
    super 1280, 960
    self.caption = "Space Invaders"

    @player = Player.new(self)
    @barrier_one = Gosu::Image.new("media/barrier.png")
    @barrier_two = Gosu::Image.new("media/barrier.png")
    @barrier_three = Gosu::Image.new("media/barrier.png")
    @barrier_four = Gosu::Image.new("media/barrier.png")
    @window = self
  end

  def update
    if Gosu::button_down? Gosu::KbLeft then @player.move_left
    end
    if Gosu::button_down? Gosu::KbRight then @player.move_right
    end

  end

  def draw
    @player.draw
    @barrier_one.draw(100, @window.height - @barrier_one.height - 200, 1)
    @barrier_two.draw((@window.width / 2) - @barrier_two.width - 100, @window.height - @barrier_two.height - 200, 1)
    @barrier_three.draw((@window.width / 2) + @barrier_two.width - 25, @window.height - @barrier_three.height - 200, 1)
    @barrier_four.draw(@window.width - @barrier_four.width - 100, @window.height - @barrier_four.height - 200, 1)
  end

  def button_down(id)
    if id == Gosu::KbEscape
      close
    end
  end
end



window = GameWindow.new
window.show
