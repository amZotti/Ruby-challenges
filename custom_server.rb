require 'Rack'
class HelloWorld
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, ["hey "]]
  end
end
#Rack::Handler::WEBrick.run HelloWorld.new


#Middleware
class Logger
  def initialize(app)
    @app = app
  end

  def call(env)
    now = Time.now.getutc.to_i
    status, headers, body = @app.call(env)
    later = Time.now.getutc.to_i
    time_difference = now - later
    body << time_difference
    [status, headers, body]
  end
  Rack::Handler::WEBrick.run Logger.new(HelloWorld.new)
end
