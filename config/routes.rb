Rails.application.routes.draw do
  
  resources :payment_methods
  resources :physicals
  resources :digitals
  resources :products

  resources :purchase_order, only: [:index] do
    collection do
      post 'add_product/:product_id', to: 'purchase_orders#add_product', as: 'add_product'
    end
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



