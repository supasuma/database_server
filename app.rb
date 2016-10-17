require 'sinatra/base'

class DatabaseServer < Sinatra::Base

  set:port, 4000,
  enable: sessions

  $key_values = {}

  get '/' do
    "WHY IS THIS SO HARD!"
  end

  get '/set' do
    $key_values.merge!(params)
  end

  get '/get' do
    $key_values[params[:key]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
