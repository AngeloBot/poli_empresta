Rails.application.routes.draw do
<<<<<<< Updated upstream
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  #get 'sessions/new'
  resources :sessions

  resources :students
  resources :item_tools
=======
  get 'sessions/new'

>>>>>>> Stashed changes
  resources :users
  resources :students
  resources :tools
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "students#index"
end
