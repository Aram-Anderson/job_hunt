Rails.application.routes.draw do

  root 'sessions#new'

  get "/login"          => "sessions#new"
  post "/login"         => "sessions#create"
  delete "/logout"      => "sessions#destroy"
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#new'

  resources :dashboard, only: [:index]
  resources :jobs, only: [:new, :create, :show]

end
