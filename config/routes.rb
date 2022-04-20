Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root "projects#index"
  resources :projects

  resources :users, only: [:index, :show, :edit, :update]
  
  #sessions :'users/sessions'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
