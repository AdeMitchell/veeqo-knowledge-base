Rails.application.routes.draw do
  devise_for :users
  resources :departments, except: [:show]
  get 'angular-items', to: 'departments#angular'
  get 'department/:id', to: 'departments#show', as: 'department_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :articles do 
    member do
      get :toggle_status
    end
  end
  

  root to: 'pages#home'
end
