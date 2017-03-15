Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  get 'users/:id/edit' => 'users#edit'

  get 'users/:id' => 'users#show'

  post 'create' => 'users#create'

  post 'edit' => 'users#editinfo'

  get 'destroy/:id' => 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
