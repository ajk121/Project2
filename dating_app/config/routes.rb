DatingApp::Application.routes.draw do
  

  devise_for :users

  resources :messages
  resources :users
  resources :views


  get 'advanced_search', to: 'users#advanced_search'
  root to: 'home#index'
  

end
