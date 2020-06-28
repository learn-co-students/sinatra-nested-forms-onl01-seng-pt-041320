require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      #view
      erb :root
    end

    get '/new' do
      
      #view
      erb :"pirates/new"
    end

    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight] )
      params[:pirate][:ships].each do |details|
        Ship.new(details[:name], details[:type], details[:booty])
      end

      @ships = Ship.all

      #view
      erb :"pirates/show"
    end
  end
end
