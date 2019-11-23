Rails.application.routes.draw do
  resources :tools
  resources :students
  resources :loans
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
