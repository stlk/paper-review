Rails.application.routes.draw do
  devise_for :users
  resources :papers, only: [:index, :create, :show]
  namespace :api do
    resources :papers
    resources :annotations do
      resources :comments
    end
  end
  get '/', to: 'home#index', as: :home_index
  get '*unmatched_route', to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
