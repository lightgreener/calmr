Rails.application.routes.draw do
  
    root :to => 'pages#new'

     # Session routes to allow login and logout
     get '/login', to: 'session#new'
     post '/login', to: 'session#create'
     delete '/login', to: 'session#destroy'

    resources :users
    resources :articles
    resources :comments


end
