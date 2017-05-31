Rails.application.routes.draw do
  resources :departments, except: [:show]
  
  get 'department/:id', to: 'departments#show', as: 'department_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :articles
  

  root to: 'pages#home'
end
