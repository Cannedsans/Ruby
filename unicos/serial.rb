require 'serialport'
# Defina a porta serial e a taxa de transmissão (baud rate) conforme necessário
port = 'COM5'  # Substitua pelo nome da porta serial do seu Arduino
baud_rate = 115200
# Configuração da porta serial
serial_port = SerialPort.new(port, baud_rate)
puts "Aguardando dados da porta serial #{port}..."
# Loop para ler continuamente da porta serial
loop do
  # Lê uma linha da porta serial
  line = serial_port.readline.chomp
  # Exibe o número recebido
  puts "Valor recebido: #{line}"
end
# Certifique-se de fechar a porta serial quando o programa for encerrado
at_exit do
  serial_port.close
end
