Rails.application.routes.draw do
  resources :item_tools
  resources :students
  resources :loans
  resources :teams do
    resources :tools
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
