
require 'celluloid/io'

class Nr
  include Celluloid::IO

  def initialize host, port
    @server = TCPServer.new(host, port)
  end

  def start
    sock = @server.accept
    loop{ yield sock.readpartial(4096) }
  rescue EOFError
    begin
      sock.close
    rescue EOFError
    end
    terminate
  end
end
