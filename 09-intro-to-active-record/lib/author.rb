class Author < ActiveRecord::Base

    def show_pen_name
        if self.pen_name
            puts "#{self.name} aka #{self.pen_name}"
        else
            puts "No alias known"
        end
    end
end