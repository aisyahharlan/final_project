require 'mysql_connector.rb'


class User
    attr_reader :id, :username, :email, :bio :created_at, :updated_at

    def initialize(params)
        @id = params[id]
        @username = params[:username]
        @email = params[:username]
        @bio = params[:bio]
        @created_at = params[:created_at]
        @updated_at = params[:updated_at]
    end

    def valid?
        return false if @username.nil?
        return false if @email.nil?
        return false if @bio.nil?
        true
    end    

    def register
        return false unless self.valid?

        client = create_db_client
        insert = client.query("INSERT INTO Users (username, bio, email) VALUES ('#{@username}','#{@bio}','#{@email}')")
        last_insert_id = client.query("SELECT LAST_INSERT_ID() AS id")
        response = client.query("SELECT * FROM users WHERE user_id = @id")

        data = response
    end

    
end