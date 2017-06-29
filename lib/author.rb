class Author
    attr_accessor :name
    attr_reader :posts

    @@post_count = 0

    def initialize(name)
        @name = name
        @posts = []
    end

    def self.post_count
        @@post_count
    end

    def add_post_by_title(name)
        new_post = Post.new(name)
        add_post(new_post)
    end

    def add_post(post)
        post.author = self
        @posts << post
        @@post_count += 1
    end
    
end