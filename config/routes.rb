Rails.application.routes.draw do
  resources :courses
  resources :options
  resources :programs
  resources :lecturers
  devise_for :users
  resources :items
  get 'bills/admin', to: 'bills#admin'
  resources :bills
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#splash"
end
