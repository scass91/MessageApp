ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './lib/message'
require './config/data_mapper'

require 'pry'

class FACESMASH < Sinatra::Base
  set :sessions, true

  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/message' do
    Message.create(message: params[:message])
    redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    erb(:show)
  end
end
