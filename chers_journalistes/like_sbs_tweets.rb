require 'Twitter' 

        config = {
            consumer_key:        '',
            consumer_secret:     '',
            access_token:        '',
            access_token_secret: ''
        }
        rClient = Twitter::REST::Client.new(config)
        sClient = Twitter::Streaming::Client.new(config)

journalists = ["@Aziliz31","@ssoumier"]

journalists.each do |individual|
    individual.delete!'@'

	rClient.user_timeline(individual).take(3).collect do |tweet|
		if tweet.is_a?(Twitter::Tweet)
			rClient.fav tweet
		end
	end
end