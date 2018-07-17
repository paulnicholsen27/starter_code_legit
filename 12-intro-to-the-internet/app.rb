require_relative './config/environment.rb'

class App

  def self.call(env)

    req = Rack::Request.new(env)
    resp = Rack::Response.new

    resp.write("<h1>Hello World</h1><a href='https://www.google.com'>GOOGLE</a>")

    resp.finish
  end
end