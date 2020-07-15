require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @sailor = Pirate.new(params[:pirate])

      params[:pirate][ships].each do |bounty|
        Ship.new(bounty)
      end

      @ships = Ship.all

      erb :"pirates/show"

    end

  end
end
