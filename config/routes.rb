BracketD::Application.routes.draw do
  devise_for :users

  root to: 'pages#index'

  resources :scholars, only: [:show] do
    resources :pledges, except: [:new, :show, :delete]
  end

end
