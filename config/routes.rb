Rails.application.routes.draw do

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  # get "/suppliers" => "supplier#index"

  # get "/suppliers/:id" => "supplier#show"

  # post "/suppliers" => "supplier#create"

  # patch "/suppliers/:id" => "supplier#update"

  # delete "/suppliers/:id" => "supplier#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "orders" => "orders#index"


end
