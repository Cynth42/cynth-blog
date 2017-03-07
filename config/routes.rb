Rails.application.routes.draw do
    resources :posts
# You can have the root of your site routed with "root"
root "posts#index"
end
