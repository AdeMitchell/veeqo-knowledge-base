Rails.application.routes.draw do
  resources :departments
  
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :articles

  root to: 'pages#home'
end
