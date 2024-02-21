require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480)  # Define as dimensões da janela
    self.caption = "Exemplo Gosu"  # Define o título da janela
    @x = 320  # Posição inicial do círculo no eixo x
    @y = 240  # Posição inicial do círculo no eixo y
    @radius = 30  # Raio do círculo
    @speed = 5  # Velocidade de movimento do círculo
  end

  def update
    move_circle if Gosu.button_down?(Gosu::KB_LEFT) || Gosu.button_down?(Gosu::KB_RIGHT) || Gosu.button_down?(Gosu::KB_UP) || Gosu.button_down?(Gosu::KB_DOWN)
  end

  def draw
    draw_circle
  end

  private

  def move_circle
    @x -= @speed if Gosu.button_down?(Gosu::KB_LEFT) && @x > @radius
    @x += @speed if Gosu.button_down?(Gosu::KB_RIGHT) && @x < self.width - @radius
    @y -= @speed if Gosu.button_down?(Gosu::KB_UP) && @y > @radius
    @y += @speed if Gosu.button_down?(Gosu::KB_DOWN) && @y < self.height - @radius
  end

  def draw_circle
    draw_quad(
      @x - @radius, @y - @radius, Gosu::Color::RED,   # Top-left
      @x + @radius, @y - @radius, Gosu::Color::RED,   # Top-right
      @x - @radius, @y + @radius, Gosu::Color::RED,   # Bottom-left
      @x + @radius, @y + @radius, Gosu::Color::RED    # Bottom-right
    )
  end
end

window = GameWindow.new
window.show
