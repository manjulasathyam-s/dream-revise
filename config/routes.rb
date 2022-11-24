Rails.application.routes.draw do
   

   # get "products/get_products", to: "products#get_products"
   # get "products/new_product", to: "products#new_product"
   # get "products/edit_product", to: "products#edit_product"
   # put "products/update_product", to: "products#update_product"
   # post "products/create_product", to: "products#create_product"
   # delete "products/delete_product", to: "products#delete_product"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


   get "users/get_user", to: "users#get_user"
   get "users/new_user", to:  "user#new_user"
   get "users/edit_user", to:  "user#edit_user"
   put "users/update_user", to:  "user#update_user"
   post "users/create_user", to:  "user#create_user"
   delete "users/delete_user", to:  "user#delete_user"



end
