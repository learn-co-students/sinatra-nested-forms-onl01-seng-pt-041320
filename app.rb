require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    #get '/pirates/:id' do
     # @pirate = Pirate.find(params[:id])

    #   erb :'pirates/show'
    # end

    post '/pirates' do
      #binding.pry 
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_data|
        Ship.new(ship_data)
        #ship.save
      end
      #binding.pry 
      @ships = Ship.all
      #redirect to "/pirates/#{pirate.id}"
      erb :'pirates/show'
    end
  end
end
