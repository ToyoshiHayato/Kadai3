Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show, :destroy]
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homes/about' => 'homes#about', as: 'about'
end
