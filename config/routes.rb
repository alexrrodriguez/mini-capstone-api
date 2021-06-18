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


end
