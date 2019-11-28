Rails.application.routes.draw do
  resources :users
  resources :students
  resources :tools
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "students#index"
end
