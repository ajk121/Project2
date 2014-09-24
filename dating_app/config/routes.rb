DatingApp::Application.routes.draw do
 devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root to: 'home#index'
  resources :messages
  
  root to: 'home#index'

  devise_for :users, :controllers => { :registrations => 'registrations' } 

  resources :messages do
    get '/:id/reply', to: 'messages#reply' # , as: :reply_to
  end
  
  # <%= link_to "Reply", reply_to_path(@message) %>

  resources :users
  resources :views
  resources :roles
  resources :posts do
    get 'page/:page', action: :index, on: :collection
  end

  # httpverb 'url', to: 'controllername#methodname', as: :helpername

  get 'advanced_search', to: 'users#advanced_search'
  get 'user_makes_visit', to: 'views#user_makes_visit'
  get 'user_receives_visit', to: 'views#user_receives_visit'

end
