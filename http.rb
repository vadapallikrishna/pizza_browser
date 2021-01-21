require 'socket'


module Http
  def Http.request(address, port = 80)
    socket = TCPSocket.open address, port
    Http.new_request(socket)
    Http.parser(socket)
    socket.close
  end
  
  def Http.upgrade_request(socket)
    socket.puts "GET / HTTP/1.1"
  end

  def Http.new_request(socket)
    socket.puts "GET / HTTP/1.1\r\n"
    socket.puts "\r\n"
  end

  def Http.parser(socket)
    is_body = false
    headers = {}
    body = ""
    while line = socket.gets
      if is_body and line == "\r\n"
        break
      elsif line == "\r\n"
        is_body = true
      end
      
      if not is_body
         header = line.chomp.split ":", 2
         headers[header[0]] = header[1]
      else
        body = body + line.chomp
      end
    end
    puts body
  end

  
  
end


Http.request "www.google.com"
