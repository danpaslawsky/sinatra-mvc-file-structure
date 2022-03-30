class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/dog' do
    @dog = Dog.all
  	erb :'dog/index.html.erb'
  end
end

#get '/' do
#@dog = Dog.new("rudolph", "mastiff", 2)
#erb :index