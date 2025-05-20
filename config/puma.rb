 # Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers: a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma.
threads_count_min = ENV.fetch("PUMA_MIN_THREADS") { 2 }
threads_count_max = ENV.fetch("PUMA_MAX_THREADS") { 4 }
threads threads_count_min, threads_count_max

# Specifies the `port` that Puma will listen on
port ENV.fetch("PORT") { 3000 }

# Specifies the `environment` that Puma will run in
environment ENV.fetch("RACK_ENV") { "development" }

# Specifies the number of `workers` to boot in clustered mode
workers ENV.fetch("PUMA_WORKERS") { 2 }

# Use the "preload_app!" method when specifying a `workers` number.
# This directive tells Puma to first boot the application and load code
# before forking the application. This takes advantage of Copy On Write
# process behavior so workers use less memory.
preload_app!

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
