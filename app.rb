require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb  :create_puppy
  end

  get 'create_puppy' do
    erb :create_puppy
  end

  post '/' do
    @name = Puppy.new(params[:name])
    @breed = Puppy.new(params[:breed])
    @age = Puppy.new(params[:age])
    erb :display_puppy
  end

end
