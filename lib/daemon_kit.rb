# TODO: Strip this out eventually so we can run without rubygems
require 'rubygems'

require File.dirname(__FILE__) + '/daemon_kit/core_ext'

$:.unshift( File.dirname(__FILE__).to_absolute_path ) unless
  $:.include?( File.dirname(__FILE__).to_absolute_path )

module DaemonKit
  VERSION = '0.1.7.3'

  autoload :Initializer, 'daemon_kit/initializer'
  autoload :Application, 'daemon_kit/application'
  autoload :Arguments,   'daemon_kit/arguments'
  autoload :Config,      'daemon_kit/config'
  autoload :Safety,      'daemon_kit/safety'
  autoload :PidFile,     'daemon_kit/pid_file'

  autoload :Cron,        'daemon_kit/cron'
  autoload :Jabber,      'daemon_kit/jabber'
  autoload :AMQP,        'daemon_kit/amqp'
  autoload :Nanite,      'daemon_kit/nanite'
end
