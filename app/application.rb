
class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now

        # convert the time to hourly in order to compare with 12
        if time.hour <= 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end