Rails.application.routes.draw do

  # Friendship controller routes
  post 'friends/create'  => 'friendships#create' 
  
  # Home controller routes.
  root   'home#index'
  get    'auth'            => 'home#auth'
 
  # Get login token from Knock
  post   'user_token'      => 'user_token#create'
 
  # User actions
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'  => 'users#create'
  patch  '/user/:id'      => 'users#update'
  delete '/user/:id'      => 'users#destroy'

  get    '/games'          => 'games#index'
  get    '/games/current'  => 'games#current'
  post   '/games/create'  => 'games#create'
  patch  '/game/:id'      => 'games#update'
  delete '/game/:id'      => 'games#destroy'

end


# root 'home#index'
# get 'auth' => 'home#auth'
# post 'user_token' => 'user_token#create'

# get '/users' => 'users#index'
# get '/users/curent' => 'users#current'
# post '/users/create' => 'users#index'
# patch '/users/:id' => 'users#index'
# delete '/users/:id' => 'users#destroy'


