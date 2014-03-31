require 'sinatra/base'

class App < Sinatra::Application
  PRODUCTS = []

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
    PRODUCTS << params[:new_product]
    redirect '/'
  end
end