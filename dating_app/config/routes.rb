DatingApp::Application.routes.draw do
  

  devise_for :users

  resources :messages
  resources :users
  resources :views
  resources :roles

  get 'advanced_search', to: 'users#advanced_search'
  
  get 'user_makes_visit', to: 'views#user_makes_visit'
  
  get 'user_receives_visit', to: 'views#user_receives_visit'

  root to: 'home#index'

end
