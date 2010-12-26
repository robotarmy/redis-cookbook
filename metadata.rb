maintainer        "Curtis Schofield"
maintainer_email  "chef@robotarmyma.de"
license           "Apache 2.0"
description       "Installs and configures Redis 2.0.4 with Daemontools - ancestor of Paper Cavalier redis"
version           "1.0.0"

recipe "redis::source", "Installs redis from source and adds init script - uses daemontools"

%w{ ubuntu debian }.each do |os|
  supports os
end

depends "build-essential"
depends "daemontools"



attribute "redis/version",
  :display_name => "Redis version",
  :description => "Which Redis version will be installed",
  :default => "2.0.4"

attribute "redis/source",
  :display_name => "Redis source file",
  :description => "Downloaded location for Redis"

attribute "redis/checksum",
  :display_name => "Redis source file checksum",
  :description => "Will make sure the source file is the real deal",
  :default => "c71aef0b3f31acb66353d86ba57dd321b541043f"

attribute "redis/bins",
  :display_name => "Redis scripts",
  :description => "After make, these are the scripts which will become available"

attribute "redis/dir",
  :display_name => "Redis installation path",
  :description => "Redis will be installed here",
  :default => "/opt/redis-2.0.4"

attribute "redis/datadir",
  :display_name => "Redis data store",
  :description => "All Redis data will be stored here",
  :default => "/var/db/redis"

attribute "redis/config",
  :display_name => "Redis config",
  :description => "Path to Redis config file",
  :default => "/etc/redis.conf"

attribute "redis/logfile",
  :display_name => "Redis log file",
  :description => "Redis will log to this file",
  :default => "/var/log/redis.log"

attribute "redis/pidfile",
  :display_name => "Redis PID file",
  :description => "Path to Redis PID",
  :default => "/var/run/redis.pid"

attribute "redis/port",
  :display_name => "Redis port",
  :description => "Accept connections on the specified port",
  :default => "6379"

attribute "redis/timeout",
  :display_name => "Redis timeout",
  :description => "Close the connection after a client is idle for this many seconds (0 to disable)",
  :default => "300"

attribute "redis/databases",
  :display_name => "Redis databases",
  :description => "Number of databases",
  :default => "16"

attribute "redis/max_memory",
  :display_name => "Redis max memory",
  :description => "Don't use more memory than the specified amount of MBs",
  :default => "256"

attribute "redis/snapshots",
  :display_name => "Redis snapshots",
  :description => "Will save the DB if both the given number of seconds and the given number of write operations against the DB occurred.",
  :default => { 900 => 1, 300 => 10, 60 => 10000 }

attribute "redis/dbfilename",
  :display_name => "Redis dbfilename",
  :description => "The filename where to dump the DB",
  :default => "redis_state.rdb"

attribute "redis/bind_address",
  :display_name => "Redis bind address",
  :description => "Redis will listen on all IP addresses by default",
  :default => "0.0.0.0"

attribute "redis/loglevel",
  :display_name => "Redis log level",
  :description => "Sets server verbosity. Will be moderately verbose, what you want in production probably",
  :default => "notice"
