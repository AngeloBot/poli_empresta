Rails.application.routes.draw do
  get 'sessions/new'

  resources :students
  resources :item_tools
  resources :users
  resources :students
  resources :tools
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "students#index"
end
