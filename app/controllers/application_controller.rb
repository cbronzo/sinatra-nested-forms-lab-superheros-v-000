require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :'app/views/super_hero'
  end
  
  post '/teams' do
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @hero_name = []
    @hero_power = []
    @hero_bio = []
    @team_member = params[:team][:members]
    
      @team_member.each do |hero|
        @hero_name << hero[:name]
        @hero_power << hero[:power]
        @hero_bio << hero[:bio]
      end
    erb :'app/views/teams'
  end

end
