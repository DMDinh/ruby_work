Rails.application.routes.draw do
  get '/' => "users#index"

  get 'users/show'

  get '/edit/:id' => 'users#edit'

  post '/update/:id' => 'users#update'

  post '/login' => "users#login"

  get '/logout' => "users#logout"

  get '/users' => 'users#users'

  get 'users/edit'

  get '/destroy/:id' => 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
