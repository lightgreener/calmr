Rails.application.routes.draw do
    root :to => 'session#new'

     # Session routes to allow login and logout
     post '/login', to: 'sessions#create'
     delete '/logout', to: 'sessions#destroy'
     get '/logged_in', to: 'sessions#is_logged_in?'

    resources :users
    resources :articles
    resources :comments


end
