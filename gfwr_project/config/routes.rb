Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello' => 'hello#hello'
  get 'say/hello' => 'hello#ihateyou'
  get 'say/hello/joe' => 'hello#ihateyoujoe'
  get 'say/hello/michael' => 'hello#michael'
  get '' => 'hello#index'
  get 'times' => 'hello#times'
  get 'times/restart' => 'hello#reset'
end
