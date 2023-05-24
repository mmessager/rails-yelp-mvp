Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :edit, :create, :show]
  resources :reviews, only: [:new, :index]
end
