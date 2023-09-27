Rails.application.routes.draw do
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  resources :post, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
  end
  root to: "homes#top"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
