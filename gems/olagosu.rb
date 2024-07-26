require 'gosu'

class HelloWorldWindow < Gosu::Window
  def initialize
    super(200, 50)
    self.caption = 'Olá Mundo!'
  end

  def draw
    draw_text('Olá Mundo!', 10, 10, Gosu::Color::WHITE)
  end

  private

  def draw_text(text, x, y, color)
    font = Gosu::Font.new(20)
    font.draw_text(text, x, y, 0, 1, 1, color)
  end
end

window = HelloWorldWindow.new
window.show
