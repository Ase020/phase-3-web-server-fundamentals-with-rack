# require 'rack'
# require 'pry'
#
# class App
#   def call(env)
#     path = env['PATH_INFO']
#
#     if path == '/'
#       [200, {"Content-Type" => "text/html"}, ["<h2>This is the homepage</h2>"]]
#     elsif path == '/about'
#       [200, {"Content-Type" => "text/html"}, ["<p>This is the about page</p>"]]
#
#     else
#       [200, {"Content-Type" => "text/html"}, ["<p>Just another page of the app.</p>"]]
#
#     end
#
#   end
# end
#
# run App.new

require 'rack'
require 'pry'

class App
  def call(env)
    path = env['PATH_INFO']

    if path == '/'
      [200, { 'Content-Type' => 'text/html' }, ['<h2>Hello <em>World</em>!</h2>']]
    elsif path == '/potato'
      [200, { 'Content-Type' => 'text/html' }, ["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]
    else
      [404, { 'Content-Type' => 'text/html' }, ['Page not found']]
    end
  end
end

run App.new
