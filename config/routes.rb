Rails.application.routes.draw do

  root to: 'home#index'
  get 'home/index'
  get 'user_root' => 'events#index', as: :user_root

  resources :events
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
