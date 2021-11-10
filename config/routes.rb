Rails.application.routes.draw do
  get 'events/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
  get "sessions/login", to: "sessions#login"
  post "sessions/login", to: "sessions#into"
  get "sessions/sign_up", to: "sessions#sign_up"
  
end
