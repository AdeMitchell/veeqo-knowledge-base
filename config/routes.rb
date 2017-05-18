Rails.application.routes.draw do
  resources :departments
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
