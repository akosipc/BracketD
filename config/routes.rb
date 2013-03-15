BracketD::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users, skip: [:registrations, :passwords]

  root to: 'pages#index'

  resources :scholars, only: [:index, :show] do
    resources :pledges, except: [:new, :show, :delete]
  end

end
