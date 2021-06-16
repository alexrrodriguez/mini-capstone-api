Rails.application.routes.draw do
  
  get "/all_products", controller: "products", action: "all_products"

  get "/lego", controller: "products", action: "lego"

  get "/air_jordan", controller: "products", action: "air_jordan"


end
