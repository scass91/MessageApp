require 'sinatra/base'

class FACESMASH < Sinatra::Base
  get '/' do
    erb :index
  end

  post "/messages" do
    @message = params[:message]
  end

end
