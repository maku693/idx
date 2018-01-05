Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :events, param: :slug, only: [:show, :create] do
    resources :participants, only: [:create, :destroy]
  end
end
