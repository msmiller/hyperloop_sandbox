Rails.application.routes.draw do
  #resources :users
  get 'home/show'
  get 'home' => "home#index"

  mount ReactiveRecord::Engine => '/rr'
  resources :blivots
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
