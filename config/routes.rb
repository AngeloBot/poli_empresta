Rails.application.routes.draw do
  resources :tools
  resources :students
  resources :loans
  get '/teams/:id/remove_member', to: 'teams#remove_member'
  resources :teams do
    get :remove_member
  end


  match 'pages/signin', via: [:get, :post]
  match 'pages/homepage', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
