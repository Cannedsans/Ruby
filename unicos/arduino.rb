require 'arduino_firmata'

# Configurar a porta serial para comunicação com o Arduino
arduino = ArduinoFirmata.connect('COM3') # Substitua 'COM3' pela porta COM correta

# Aguardar a inicialização do Arduino
sleep(2)

# Configurar o pino do LED
led_pin = 3
arduino.digital_write(led_pin, ArduinoFirmata::OUTPUT)

# Piscar o LED
100.times do
  arduino.digital_write(led_pin, ArduinoFirmata::HIGH)
  sleep(0.2)
  arduino.digital_write(led_pin, ArduinoFirmata::LOW)
  sleep(0.2)
end

# Fechar a conexão com o Arduino
arduino.close
