Rails.application.routes.draw do
  get '/' => "user#index"

  get '/show/:id' => "user#show"

  get '/edit/:id' => 'user#edit'

  get '/logout' => "user#logout"

  get '/users' => 'user#users'

  get '/allsecrets' => 'user#allsecrets'

  post '/secret/:id' => 'user#secret'

  post '/update/:id' => 'user#update'

  post '/login' => "user#login"

  post '/create' => "user#create"

  get '/like/:id' => 'user#like'

  get '/unlike/:id' => 'user#unlike'

  get '/destroy/:id' => 'user#destroy'

  get '/delete/:id' => 'user#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
