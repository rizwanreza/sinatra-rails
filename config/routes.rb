class SinatraApp < Sinatra::Base
  
  get '/sinatra' do
    "Hello from SinatraApp"
  end
  
  get '/sinatra/world' do
    "Hello World"
  end
  
  get '/sinatra/hello' do
    "Once again, Hello World!"
  end
end

SinatraRails::Application.routes.draw do |map|
  match '/sinatra(/:string)' => SinatraApp
end
