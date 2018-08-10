require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :'app/views/index'
  end
  
  post '/teams' do
    erb :'app/views/teams'

end
