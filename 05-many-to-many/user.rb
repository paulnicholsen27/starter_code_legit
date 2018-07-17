class User

    attr_reader :username

    def initialize(username)
        @username = username
        my_tweets = []
    end

    def tweets
        Tweet.all.select do |tweet|
            tweet.user == self
        end
    end

    def post_tweet(text)
        Tweet.new(text, self)
    end

    def like_tweet(tweet)
        # create a "Like" connection between tweet and user 
        # e.g., coffee_dad.like_tweet(tweet1)
        if tweet.user == self
            puts "You can't like your own tweet, dummy"
        else
            Like.new(self, tweet)
        end
    end

    def liked_tweets
        # returns collecton of all tweets this user has liked 
        likes = Like.all.select{ |like| like.user == self }
        likes.collect {|like| like.tweet}
    end

    def unlike_tweet(tweet)
        # go through all likes and find the one that has a matching user _and_ tweet
        Like.all.delete_if {|like| like.user == self && like.tweet == tweet }
    end
end

