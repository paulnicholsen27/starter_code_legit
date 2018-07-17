class Like

    attr_reader :user, :tweet

    @@all = []

    def initialize(user, tweet)
        if Like.already_exist?(user, tweet)
            return "You can't like a Tweet more than once"
        end
        @user, @tweet = user, tweet
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.already_exist?(user, tweet)
        self.all.any?{|like| like.user == user && like.tweet == tweet}
    end
end