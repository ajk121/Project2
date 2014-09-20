DatingApp::Application.routes.draw do
  

  devise_for :users

  resources :messages
  resources :users
  resources :views


  get 'advanced_search', to: 'users#advanced_search'
  get 'people_visited', to: 'users#advanced_search'
  get 'people_visiting', to: 'users#advanced_search'

  root to: 'home#index'
  

end
