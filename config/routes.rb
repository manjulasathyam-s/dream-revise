Rails.application.routes.draw do
   
# product
   get "products/get_product", to: "products#get_product"
   get "products/new_product", to: "products#new_product"
   get "products/edit_product", to: "products#edit_product"
   put "products/update_product", to: "products#update_product"
   post "products/create_product", to: "products#create_product"
   delete "products/delete_product", to: "products#delete_product"

#user
   get "users/get_user", to: "users#get_user"
   get "users/new_user", to:  "user#new_user"
   get "users/edit_user", to:  "user#edit_user"
   put "users/update_user", to:  "user#update_user"
   post "users/create_user", to:  "user#create_user"
   delete "users/delete_user", to:  "user#delete_user"

#cart
   get "carts/get_cart", to: "carts#get_cart"
   get "carts/new_cart", to:  "carts#new_cart"
   get "carts/edit_cart", to:  "carts#edit_cart"
   put "carts/update_cart", to:  "carts#update_cart"
   post "carts/create_cart", to:  "carts#create_cart"
   delete "carts/delete_cart", to:  "carts#delete_cart"

#user_address
   get "user_address/get_user_address", to: "user_address#get_user_address"
   get "user_address/new_user_address", to:  "user_address#new_user_address"
   get "user_address/edit_user_address", to:  "user_address#edit_user_address"
   put "user_address/create_user_address", to:  "user_address#create_user_address"
   post "user_address/delete_user_address", to:  "user_address#delete_user_address"
   delete "user_address/update_user_address", to:  "user_address#update_user_address"

#address
   get "address/get_address", to: "address#get_address"
   get "address/new_address", to:  "address#new_address"
   get "address/edit_address", to:  "address#edit_address"
   put "address/create_address", to:  "address#create_address"
   post "address/delete_address", to:  "address#delete_address"
   delete "address/update_address", to:  "address#update_address"

#city_village
   get "city_villages/get_city_village", to: "city_villages#get_city_village"
   get "city_villages/new_city_village", to:  "city_villages#new_city_village"
   get "city_villages/edit_city_village", to:  "city_villages#edit_city_village"
   put "city_villages/update_city_village", to:  "city_villages#update_city_village"
   post "city_villages/create_city_village", to:  "city_villages#create_city_village"
   delete "city_villages/delete_city_village", to:  "city_villages#delete_city_village"

#district

   get "districts/get_district", to: "districts#get_district"
   get "districts/new_district", to:  "districts#new_district"
   get "districts/edit_district", to:  "districts#edit_district"
   put "districts/update_district", to:  "districts#update_district"
   post "districts/create_district", to:  "districts#create_district"
   delete "districts/delete_district", to:  "districts#delete_district"

#state

   get "states/get_state", to: "states#get_state"
   get "states/new_state", to:  "states#new_state"
   get "states/edit_state", to:  "states#edit_state"
   put "states/update_state", to:  "states#update_state"
   post "states/create_state", to:  "states#create_state"
   delete "states/delete_state", to:  "states#delete_state"

end
