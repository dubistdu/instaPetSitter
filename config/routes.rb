Rails.application.routes.draw do
  root 'pages#welcome'
  get 'pages/welcome'

  resources :favorites
  resources :ratings
  resources :users
  resources :sitters
  resources :pets
  resources :sit_pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
