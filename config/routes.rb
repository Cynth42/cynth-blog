Rails.application.routes.draw do
    devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
    

    #nested routes
    resources :posts do
        resources :comments
    end
#You can have the root of your site routed with "root"
    root "posts#index"
    
    get '/about', to: 'pages#about'
    
end
