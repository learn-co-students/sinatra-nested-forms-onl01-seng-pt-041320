require './environment'

module FormsLab
  class App < Sinatra::Base

    # This one works
    get '/' do
      erb :root
    end

    # This one doesnt load yet
    get '/new' do
      #"make sure it loads"
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
