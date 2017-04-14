Rails.application.routes.draw do
    devise_for :users
    
#nested routes
    resources :posts do
        resources :comments
    end
#You can have the root of your site routed with "root"
    root "posts#index"
    
    get '/about', to: 'pages#about'
    
end
