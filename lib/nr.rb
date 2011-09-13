
require 'cool.io'

module Nr
  class Connection < Coolio::TCPSocket
    def on_close
      Coolio::Loop.default.stop
    end

    def on_read data
      print data
    end
  end

  def self.start argv
    loop = Coolio::Loop.default
    Coolio::TCPServer.new(argv[0], argv[1].to_i, Connection).attach(loop)
    loop.run
  end
end
