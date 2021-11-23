Rails.application.routes.draw do
  get 'event_subscribings/create'
  get 'event_subscribings/delete'
  get 'events/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
  get "sessions/login", to: "sessions#login"
  post "sessions/login", to: "sessions#into"
  get "sessions/logout", to: "sessions#logout"
  get "sessions/sign_up", to: "sessions#sign_up"

  resources :users
  resources :events
  resources :event_subscribings, only: [:create, :delete]  
end
