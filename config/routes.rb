Rails.application.routes.draw do
  resources :papers, only: [:index, :create, :show]
  namespace :api do
    resources :papers
    resources :annotations do
      resources :comments
    end
  end
  get '/', to: 'home#index', as: :home_index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
