
require 'nr'

module Nr::Runner
  module_function
  def options
    @options ||=
    [['-o, --host HOST'                            ,
      'HOST it is listening to (default: 0.0.0.0)'],

     ['-p, --port PORT'                            ,
      'PORT it is bound     to (default: 12344)'  ],

     ['-h, --help'       , 'Print this message'   ],
     ['-v, --version'    , 'Print the version'    ]]
  end

  def run argv=ARGV
    host, port = parse(argv)
    warn("Listening on #{host}:#{port}")
    Nr.new(host, port).start{ |bytes| print bytes }
  end

  def parse argv
    unused, host, port = [], '0.0.0.0', 12344
    until argv.empty?
      case arg = argv.shift
      when /^-p=?(.+)?/, /^--port=?(.+)?/
        port = $1 || argv.shift

      when /^-o=?(.+)?/, /^--host=?(.+)?/
        host = $1 || argv.shift

      when /^-h/, '--help'
        puts(help)
        exit

      when /^-v/, '--version'
        require 'nr/version'
        puts(Nr::VERSION)
        exit

      when /^(\d+)/
        port = arg

      else
        host = arg
      end
    end
    [host, port]
  end

  def help
    maxn = options.transpose.first.map(&:size).max
    maxd = options.transpose.last .map(&:size).max
    "Usage: nr HOST PORT\n" +
    options.map{ |(name, desc)|
      if desc.empty?
        name
      else
        sprintf("  %-*s  %-*s", maxn, name, maxd, desc)
      end
    }.join("\n")
  end
end
