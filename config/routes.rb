Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'packages', to: 'pages#packages'
  get 'login', to: 'pages#login'
  resources :contacts
  get 'quote', to: 'contacts#new'
end

#Add new pages here