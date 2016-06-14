Rails.application.routes.draw do
  resources :delegates, only: [:show, :index]

  get "states/:state/delegates" => "delegates#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "delegates#index"
end
