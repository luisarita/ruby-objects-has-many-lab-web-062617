class Post
    attr_accessor :title
    attr_accessor :author

    def initialize(name)
        @title = name
    end

    def author_name
        if @author == nil
            return nil
        else
            return @author.name
        end
    end
end