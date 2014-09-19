DatingApp::Application.routes.draw do
  

  resources :messages


  resources :views


  root to: 'home#index'
  resources :users

end
