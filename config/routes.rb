Rails.application.routes.draw do

  root 'sessions#new'

  get "/login"          => "sessions#new"
  post "/login"         => "sessions#create"
  delete "/logout"      => "sessions#destroy"
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#new'

  resources :dashboard, only: [:index]
  resources :jobs do
    resources :contacts, except: [:index, :show]
    resources :checklists, except: [:index, :show]
  end
  resources :companies, only: [:show]
end
