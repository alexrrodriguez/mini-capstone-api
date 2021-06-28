Rails.application.routes.draw do
  
  get "/all_products", controller: "products", action: "all_products"

  get "/lego", controller: "products", action: "lego"

  get "/air_jordan", controller: "products", action: "air_jordan"

  get "/one_product" => "products#one_product"

  get "/one_product/:id" => "products#one_product"

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


end
