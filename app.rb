require 'sinatra/base'
require './lib/message'

class FACESMASH < Sinatra::Base
  get '/' do
  p  session[:history] ||= []
  p  @history = session[:history]
  p  erb :index
  end

  post "/messages" do
  p  session[:message] = Message.new(params[:message])
     message = session[:message]
  p  session[:history] << message
    redirect '/'
  end


end
