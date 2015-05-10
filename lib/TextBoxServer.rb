#Sinatra is like rails, but without almost everything
require 'sinatra'

class Server < Sinatra::Base
  puts 'Starting text box server!'

#get '/' is like rails routes.rb, basically saying whenever you go to the homepage of the api.
  get '/' do
    File.read('text_box')
  end

#put '/' is like get '/', but it is a bit different, and accepts a body (learn the difference between put and get here: http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods)
  put '/' + File.read('text_box_password') do
    #Does things (you don't have to understand it - I'm not exactly sure either :P)
    request.body.rewind

    #Sets what is in the text box
    File.write('text_box', request.body.read)
  end

end

# Run the app!
#
puts "TextBox server is running!"
Server.run!