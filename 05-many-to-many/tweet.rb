class Tweet

    attr_reader :message, :user

    @@all = []

    def initialize(message, user)
        @message, @user = message, user
        @@all << self
    end

    def username
        self.user.username
    end

    def self.all
        @@all
    end

    def likers
        #returns a collection of all Users who
        # have liked this Tweet
        likes = Like.all.select{|like| like.tweet == self}
        likes.collect{ |like| like.user }
    end
end