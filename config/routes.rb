Rails.application.routes.draw do
  get 'events/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
  get "session/login", to: "session#login"
  get "session/sign_up", to: "session#sign_up"
  
end
