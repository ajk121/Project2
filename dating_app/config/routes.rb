DatingApp::Application.routes.draw do

 devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  resources :messages do
    get '/reply', to: 'messages#reply', as: :reply_message
  end

  root to: 'home#index'
  resources :messages

  resources :messages do
    get '/:id/reply', to: 'messages#reply' 
  end
  
  delete '/messages/:id', to: 'messages#destroy', as: :delete_message
 
  resources :users
  resources :views
  resources :roles
  resources :posts do
    get 'page/:page', action: :index, on: :collection
  end





  get 'user_makes_visit', to: 'views#user_makes_visit'
  get 'user_receives_visit', to: 'views#user_receives_visit'





end
