require "sinatra"

get '/' do
  "This is the root path"
end

get ("/hello") do
  "Hi there!"
end

get "/hello_with_header" do
  #statu code
  #HEaders
  ##body text
  status = 404
  headers = { "X-Gabe" => "Awesome" }
  body = "Gabe is teaching"

  [status, headers, body]
end
