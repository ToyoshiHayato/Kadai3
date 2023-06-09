Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :create, :index, :edit, :show, :destroy, :update] 
  root to: "homes#top"
  
  
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homes/about' => 'homes#about', as: 'about'
end
