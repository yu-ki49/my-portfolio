Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :toppage
  resources :onepieces, expect: [:show, :new, :edit]
  resources :dconans, expect: [:show, :new, :edit]
  resources :dslayers, expect: [:show, :new, :edit]
  resources :aots, expect: [:show, :new, :edit]
  root 'toppage#index'
end
