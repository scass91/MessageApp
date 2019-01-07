ENV["RACK_ENV"] ||= 'development'

require 'sinatra/base'
require './lib/message'
require './config/data_mapper'

require 'pry'


class FACESMASH < Sinatra::Base
  enable :sessions
  enable :method_override

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

  # Hello reviewers! My understanding of "PATCH" comes from the below link
  # http://restcookbook.com/HTTP%20Methods/patch/
  # https://wixelhq.com/blog/working-with-sinatra-routes-and-conditions
  # As far as I can see, it's not perfect, but it's useful for updating small parts of a given
  # Data set, for example, changing one entry in a messaging app!

  post '/message/:id' do |id|
    @message = Message.get!(id.to_i)
    @message.update!(params[:message])
    redirect "/"
  end

end
