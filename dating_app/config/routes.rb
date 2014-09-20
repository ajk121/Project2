DatingApp::Application.routes.draw do
  

  devise_for :users

  resources :messages
  resources :users
  resources :views


  get 'advanced_search', to: 'users#advanced_search'
  
  get 'user_visited', to: 'views#user_visited'
  
  get 'user_visiting', to: 'views#user_visiting'

  root to: 'home#index'
  

end
