Rails.application.routes.draw do
  post "/sign-in", to: "sessions#create"
  get "/sign-out", to: "sessions#destroy"
  get "/current-admin", to: "sessions#get_current_admin"
  resources :tutorials, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
