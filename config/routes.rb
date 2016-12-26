Rails.application.routes.draw do
  #
  # shoppe admin
  mount Shoppe::Engine => "/shoppe"
  #
  # homepage
   root 'welcome#index'
  #
  #
  #products browsing hoping it enter categorie...done
  get 'products'=> 'products#categories', :as => 'categories'
  get 'products/fliter' => 'products#fliter', :as => 'products_fliter'
  get 'products/:category_id' => 'products#index', :as => 'products'
  get 'products/:category_id/:product_id' => 'products#show', :as => 'product'
  post 'products/:category_id/:product_id/buy' => 'products#add_to_basket', :as => 'buy_product'

  #
  # Order status
  #
  get 'order/:token' => 'orders#status', :as => 'order_status'

  #
  # Basket
  #
  get 'basket' => 'orders#show', :as => 'basket'
  delete 'basket' => 'orders#destroy', :as => 'empty_basket'
  post 'basket/:order_item_id' => 'orders#change_item_quantity', :as => 'adjust_basket_item_quantity'
  delete 'basket/:order_item_id' => 'orders#change_item_quantity'
  delete 'basket/delete/:order_item_id' => 'orders#remove_item', :as => 'remove_basket_item'

  #
  # Checkout
  #
  match 'checkout' => 'orders#checkout', :as => 'checkout', :via => [:get, :patch]
  match 'checkout/delivery' => 'orders#change_delivery_service', :as => 'change_delivery_service', :via => [:post]
  match 'checkout/pay' => 'orders#payment', :as => 'checkout_payment', :via => [:get, :patch]
  match 'checkout/confirm' => 'orders#confirmation', :as => 'checkout_confirmation', :via => [:get, :patch]

  #
  # Static pages
  #

end
