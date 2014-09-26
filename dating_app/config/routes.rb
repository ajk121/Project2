DatingApp::Application.routes.draw do

 devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  resources :messages do
    get '/reply', to: 'messages#reply', as: :reply_message
    collection do
      get 'inbox'
      get 'sent'
    end
  end

  delete '/messages/:id', to: 'messages#destroy', as: :delete_message 

  root to: 'home#index'
  resources :users 
  resources :views
  resources :roles
  resources :posts do
    get 'page/:page', action: :index, on: :collection
  end

  get 'user_makes_visit', to: 'views#user_makes_visit'
  get 'user_receives_visit', to: 'views#user_receives_visit'

end
