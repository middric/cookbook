# Instillation
[:version]         = '2.6.13'
[:source_checksum] = '2ef8ea6a67465b6c5a5ea49241313d3dbc0de11b'
[:install_dir]     = '/usr/local'
[:conf_dir]        = '/etc/redis'
[:db_dir]          = '/srv/redis'

# Service user & group
[:user]  = 'redis'
[:group] = 'redis'

# Config
[:daemonize]                   = 'yes'
[:pid_file]                    = '/var/run/redis_6379.pid'
[:port]                        = 6379
[:bind_address]                = '127.0.0.1'
[:timeout]                     = 0
[:keepalive]                   = 60
[:log_level]                   = 'notice'
[:log_file]                    = '/var/log/redis.log'
[:databases]                   = 16
[:activerehashing]             = 'yes'
[:stop_writes_on_bgsave_error] = 'yes'
[:rdbcompression]              = 'yes'
[:rdbchecksum]                 = 'yes'
[:dbfilename]                  = 'dump.rdb'
[:slave_serve_stale_data]      = 'yes'
[:slave_read_only]             = 'yes'
[:repl_disable_tcp_nodelay]    = 'no'
[:slave_priority]              = 100
[:appendonly]                  = 'no'
[:appendfsync]                 = 'everysec'
[:no_appendfsync_on_rewrite]   = 'no'
[:auto_aof_rewrite_percentage] = 100
[:auto_aof_rewrite_min_size]   = '64mb'
[:lua_time_limit]              = 5000
[:slowlog_log_slower_than]     = 10000
[:slowlog_max_len]             = 128
[:snapshot_saves]              = [
  { 900 => 1 },
  { 300 => 10 },
  { 60 => 10000 }
]