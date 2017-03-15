Rails.application.routes.draw do

  get '' => 'forms#index'
  post '/route' => 'forms#result'
  post '/' => 'forms#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
