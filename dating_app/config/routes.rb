DatingApp::Application.routes.draw do
 devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root to: 'home#index'
  resources :messages
  resources :users
  resources :views
  resources :roles
  resources :posts do
    get 'page/:page', action: :index, on: :collection
  end

  get 'advanced_search', to: 'users#advanced_search'
  
  get 'user_makes_visit', to: 'views#user_makes_visit'
  
  get 'user_receives_visit', to: 'views#user_receives_visit'


 
 
end
