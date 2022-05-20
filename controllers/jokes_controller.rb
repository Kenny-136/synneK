get '/' do
    compiled_jokes = all_jokes()
    api_jokes = HTTParty.get("https://icanhazdadjoke.com/", headers: {'Accept' => 'application/json'})

    erb :'jokes/index', locals: {
      all_jokes: all_jokes,
      api_jokes: api_jokes
    }
end

post '/jokes' do
    user_id = params['user_id']
    jokes = params['jokes']
  
    create_jokes(user_id, jokes)
  
    redirect '/'
end

get '/joke/:id/edit' do
    id = params['id']
  
    joke = get_joke(id)
  
    erb :'jokes/edit', locals: {
        joke: joke
    }
end

put '/joke/:jokes_id' do
    user_id = params['user_id']
    jokes = params['jokes']
    jokes_id = params['jokes_id']

    improvise_joke(user_id, jokes, jokes_id)
    
    redirect '/'
    binding.pry
end

delete '/joke/:id' do
    id = params['id']
  
    delete_joke(id)
  
    redirect '/'
end

