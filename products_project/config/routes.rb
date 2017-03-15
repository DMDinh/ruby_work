Rails.application.routes.draw do
  get '/products' => "products#index"

  get 'products/new' => "products#new"

  post '/create' => "products#create"

  get 'products/:id' => "products#show"

  get 'products/:id/edit' => "products#edit"

  get '/comments' => "products#allcomments"

  post '/editinfo/:id' => 'products#editinfo'

  get '/destroy/:id' => "products#destroy"

  post 'comment/:id' => "products#comment"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
