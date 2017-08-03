Rails.application.routes.draw do
  # resources :topics, only: [:index, :show]

  devise_for :users, path: '', path_names: {sign_in: 'Login', sign_out: 'Logout', sign_up: 'Register'}
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'js', to: 'portfolios#js'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'
  
  root to: 'pages#home'
end
