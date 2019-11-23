Rails.application.routes.draw do
  resources :item_tools
  resources :users
  resources :loans
  resources :teams
  resources :students do
  	resources :tools
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
