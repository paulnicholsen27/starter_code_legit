class Cat


    def initialize(name, fluffiness)
        @name = name
        @fluffiness = fluffiness
    end

    def name=(name)
        @name = name
    end

    def name
        @name
    end

    def fluffiness=(fluffiness)
        @fluffiness = fluffiness
    end

    def fluffiness
        if @fluffiness > 5
            return "very fluffy"
        else
            return "not so fluffy"
        end
    end

    def introduction
        "My name is #{self.name} and I have a fluffiness score of #{@fluffiness}.  I am #{self.fluffiness}"
    end
end

ella = Cat.new("Ella", 10)

puts ella.introduction