Rails.application.routes.draw do
 devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
end
  resources :users, only: [:show, :new, :index, :edit, :destroy, :update]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

