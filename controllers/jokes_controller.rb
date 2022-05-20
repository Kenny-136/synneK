get '/' do
    food_items = all_jokes()
  
    erb :'jokes/index', locals: {
      all_jokes: all_jokes
    }
end