Rails.application.routes.draw do
  resources :users
  get 'home/show'

  mount ReactiveRecord::Engine => '/rr'
  resources :blivots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
