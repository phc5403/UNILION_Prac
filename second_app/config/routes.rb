Rails.application.routes.draw do
    # Create
    get '/notes/new' => 'notes#new'
    post '/notes' => 'notes#create'
    
    # Read
    get '/notes' => 'notes#index'
    get '/notes/:id' => 'notes#show'
    
    # Update
    get '/notes/:id/edit' => 'notes#edit'
    patch '/notes/:id' => 'notes#update'
    
    # Destroy
    delete '/notes/:id' => 'notes#destroy'
end
