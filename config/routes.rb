BracketD::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users, skip: [:registrations, :passwords]

  root to: 'pages#index'

  resources :scholars, only: [:index, :show, :destroy] do
    resources :pledges, only: [:create, :update]
  end

  resources :pledges, only: [] do
    resources :transactions, only: [:index] do
    end
  end
end
