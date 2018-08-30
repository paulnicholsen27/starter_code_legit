class User

    attr_reader :username

    

    def initialize(username)
        @username = username
        my_tweets = []
    end

    def tweets
        tweets = Tweet.all.collect do |tweet|
            if tweet.user == self
                tweet
            end
        end
        tweets.compact
    end

    def post_tweet(text)
        Tweet.new(text, self)
    end
end

