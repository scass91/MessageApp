require 'sinatra/base'
require './lib/message'
require './lib/history'

class FACESMASH < Sinatra::Base

enable :sessions

  get '/' do
    session[:history] ||= []
    @history = session[:history]
    erb :index
  end

  post "/messages" do
    message = Message.new(params[:message])
    session[:history] << message
    redirect '/'
  end


end