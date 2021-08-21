class Post
    attr_reader :id, user_id, post
    def initialize(id, user_id, post)
        @id = id
        @user_id = user_id
        @post =post
    end
end