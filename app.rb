require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @puppy = Puppy.new(params[:name], params[:age], params[:breed])
    binding.pry
    erb :display_puppy
  end

end
