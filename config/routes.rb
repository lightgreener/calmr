Rails.application.routes.draw do

    root :to => 'pages#new'

     # Session routes to allow login and logout
     post '/login', to: 'session#create'
     delete '/logout', to: 'session#destroy'
     get '/logged_in', to: 'session#is_logged_in?'

    resources :users, only: [:create, :show, :index] do
    resources :articles
  end

    resources :comments

end
