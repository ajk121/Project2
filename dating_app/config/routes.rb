DatingApp::Application.routes.draw do
  

  resources :messages
  resources :users
  resources :views

  root to: 'home#index'
  

end
