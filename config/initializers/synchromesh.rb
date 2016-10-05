Synchromesh.configuration do |config|
  # this is the initialiser for polling, see the synchromesh
  # documentation for using pusher.com
  config.transport = :simple_poller
  config.channel_prefix = "synchromesh"
  config.opts = {
    seconds_between_poll: 5.seconds,
    seconds_polled_data_will_be_retained: 1.hour,
    user_id: 1
  }
end
