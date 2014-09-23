DatingApp::Application.routes.draw do
  
  root to: 'home#index'

  devise_for :users, :controllers => { :registrations => 'registrations' } 

  resources :messages do
    get 'reply', :on => :member
  end
  
  resources :users
  resources :views
  resources :roles

  get 'advanced_search', to: 'users#advanced_search'
  get 'user_makes_visit', to: 'views#user_makes_visit'
  get 'user_receives_visit', to: 'views#user_receives_visit'

end
