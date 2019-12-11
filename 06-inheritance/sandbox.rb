class Animal


end



module Something


        def say_hi
            puts "hi"
        end


        def self.hello
            puts "hello"
        end

end

class Dog < Animal 

    include Something
end
fido = Dog.new
fido.say_hi
Dog.hello