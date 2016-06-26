Rails.application.routes.draw do
  devise_for :users
  resources :slates
  resources :delegates, only: [:show, :index]

  get "states/:state/delegates" => "delegates#index", as: :state_delegates
  get "slates/:slate_id/delegates" => "delegates#index", as: :slate_delegates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "delegates#index"
end
