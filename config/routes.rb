Rails.application.routes.draw do

  root 'sessions#new'

  get "/login"          => "sessions#new"
  post "/login"         => "sessions#create"
  delete "/logout"      => "sessions#destroy"
  get '/auth/:provider/callback', to: 'sessions#create'

  resources :dashboard, only: [:index]

end
