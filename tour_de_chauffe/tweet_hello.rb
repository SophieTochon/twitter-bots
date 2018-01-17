require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "KCQe4cHprNjqf6HiQ1kxLc1qM"
  config.consumer_secret     = "8rl6lSN1QVhav8U962oTigZpcNR68wZrgElCwcL90xIWMy5jYn"
  config.access_token        = "755701949937381376-PGh3y0red28R7dMYkhpTJBh8LdPHbhE"
  config.access_token_secret = "bUBb0JDrYcV6tDUC6Xmiu8mnJF7oQPkTiu3FvEXbWvGqh"
end

client.update("Hello World!")