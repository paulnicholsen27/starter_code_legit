class Author < ActiveRecord::Base

    has_many :books

    def name_sanitizer
      self.name.gsub(/\W+/, '').downcase
    end

end
