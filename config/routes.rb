Rails.application.routes.draw do
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  resources :event
  root to: 'home#index'
  get 'home/index'

  #get '/auth/login', to: 'devise/session#new', as: 'user_root_path'
  #get 'user_root' => 'devise/session#new', as: :user_root


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
