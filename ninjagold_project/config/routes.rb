Rails.application.routes.draw do
  get '' => 'rpgs#index'
  post '/farm' => 'rpgs#farm'

  post '/cave' => 'rpgs#cave'

  post '/house' => 'rpgs#house'

  post '/casino' => 'rpgs#casino'

  post 'rpgs/activities'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
