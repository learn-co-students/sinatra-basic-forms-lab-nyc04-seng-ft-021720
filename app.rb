require_relative 'config/environment'

class App < Sinatra::Base




get '/' do 
erb :index
end 



get '/new' do 
    erb :create_puppy
end 


post '/puppy' do 
    name_doggo = params["name"]
    breed_doggo = params["breed"]
    age_doggo = params["age"].to_i


    @puppy = Puppy.new(name_doggo, breed_doggo, age_doggo)
    erb :display_puppy
end 





end
