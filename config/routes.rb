Cadashboard::Application.routes.draw do
  root to: 'pages#home'
  
  #Omniauth Login Routes/Redirects Github
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  #User Routes
  resources :users
end
