Rails.application.routes.draw do
   get "products/get_products", to: "products#get_products"
   get "products/new_product", to: "products#new_product"
   get "products/edit_product", to: "products#edit_product"
   put "products/update_product", to: "products#update_product"
   post "products/create_product", to: "products#create_product"
   delete "products/delete_product", to: "products#delete_product"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
