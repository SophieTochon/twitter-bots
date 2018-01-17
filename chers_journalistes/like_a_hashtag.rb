require 'Twitter'

        config = {
            consumer_key:        '',
            consumer_secret:     '',
            access_token:        '',
            access_token_secret: ''
        }
        rClient = Twitter::REST::Client.new(config)
        sClient = Twitter::Streaming::Client.new(config)

rClient.search("#thehackingproject").take(10).each do |tweet|
  rClient.favorite(tweet)
end
