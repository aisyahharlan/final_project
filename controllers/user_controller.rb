require_relative '..models/user'

class UserController
    def register(params)
        user = User.new(params)
        user.register
    end
end