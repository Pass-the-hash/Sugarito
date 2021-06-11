Rails.application.routes.draw do
  devise_for :users
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root "cakes#index"

  get "/cakes", to: "cakes#index"
  get "/cakes/new", to: "cakes#new"
  post "/cakes", to: "cakes#create"

  get "/worker/add", to: "worker#add"
  post "/worker/add", to: "products#create"

  get "/about", to: "application#about"
  get "/products", to: "application#products_list"
  get "/product", to: "application#product_details"


  #get '*unmatched_route', to: 'application#not_found'

end
