DatingApp::Application.routes.draw do
  
  root to: 'home#index'

  devise_for :users, :controllers => { :registrations => 'registrations' } 

  resources :messages do
    get '/reply', to: 'messages#reply', as: :reply_message
  end
  
  # <%= link_to "Reply", reply_to_path(@message) %>

  resources :users
  resources :views
  resources :roles

  # httpverb 'url', to: 'controllername#methodname', as: :helpername

  get 'advanced_search', to: 'users#advanced_search'
  get 'user_makes_visit', to: 'views#user_makes_visit'
  get 'user_receives_visit', to: 'views#user_receives_visit'

end
