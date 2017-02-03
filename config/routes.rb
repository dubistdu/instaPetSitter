Rails.application.routes.draw do
  root 'pages#welcome'
  get 'pages/welcome'

  resources :favorites
  resources :ratings
  resources :users do
    collection do
      get :search
      post :results
    end
  end
  resources :sitters
  resources :pets
  resources :sit_pets


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

end
