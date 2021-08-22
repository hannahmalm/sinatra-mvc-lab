require_relative 'config/environment'

class App < Sinatra::Base

    #this is a basic user input that is getting input from the views page
    get '/' do 
        erb :user_input
    end 

    #after you get the input, post it on this new route
    #set piglatin as an instance variable
    post '/piglatinizer' do 
        pl= pigLatinizer.new 
        @piglatin = pl.piglatinize(params[:user_phrase])
        erb :results
    end 
end

#Model is where the pig latin logic is held
#Views are where the erbs are held that make the forms in HTML
#app.rb is where the routes are found 