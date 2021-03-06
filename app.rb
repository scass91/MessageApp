ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './lib/message'
require './config/data_mapper'

require 'pry'

class FACESMASH < Sinatra::Base
  enable :sessions

  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/message' do
    Message.create(message: params[:message])
    redirect '/'
  end

  get '/messages/:id' do |id|
    @message = Message.get(params[:id])
    erb(:show)
  end

  get '/messages/:id/edit' do |id|
    @message = Message.get(params[:id])
    erb(:edit)
  end

  post '/message/:id' do |id|
    @message = Message.get!(id.to_i)
    @message.update!(params[:message])
    redirect "/"
  end

  post '/delete/:id' do |id|
    @message = Message.get!(id.to_i)
    @message.destroy
    redirect "/"
  end

end
