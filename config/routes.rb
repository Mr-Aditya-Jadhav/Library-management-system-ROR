Rails.application.routes.draw do
  resources :requestbooks
  resources :books
  get 'faculty/faculty'
  get 'faculty/listoffaculty'
  get 'students/student'
  get 'students/listofstudents'
  get 'admin/dashboard'
  #get 'home/index'
  root 'home#index'
  
  


  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"


  get "sign_up", to:"registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to:"sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"


  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
