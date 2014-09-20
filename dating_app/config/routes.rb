DatingApp::Application.routes.draw do
  

  devise_for :users

  resources :messages
  resources :users
  resources :views

  root to: 'home#index'
  

end
