Rails.application.routes.draw do
  resources :students
  resources :loans
  get '/search', to: 'pages#search'
  get '/teams/:id/remove_member', to: 'teams#remove_member'
  get '/teams/:id/remove_tool', to: 'teams#remove_tool'
  get '/teams/:team_id/add_tool', to: 'tools#new'

  resources :teams do
    resources :tools
    get :remove_member
  end

  resources :tools
  match '/signin', to: 'pages#signin', via: [:get, :post]
  match 'pages/homepage', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
