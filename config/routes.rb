Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :minous do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, only: [:destroy, :edit, :update]

  get 'minouboard', to: 'pages#minouboard'
  get 'emprunts', to: 'pages#emprunts'
  get 'historique', to: 'pages#historique'
end
