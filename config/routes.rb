Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :posts
  root to: 'home#index'
  get 'home/index'

  # get '/user:id/posts', to: 'posts#show', as: 'user_root_path'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
