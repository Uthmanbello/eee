Rails.application.routes.draw do
  resources :gradclasses
  resources :semesters
  resources :courses
  resources :options
  resources :programs
  resources :lecturers
  devise_for :users
  resources :items
  get 'bills/admin', to: 'bills#admin'
  get 'bills/admin/lecturers', to: 'bills#lecturers'
  get 'bills/admin/programs', to: 'bills#programs'
  get 'bills/admin/options', to: 'bills#options'
  get 'bills/admin/courses', to: 'bills#courses'
  resources :bills
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#splash"
end
